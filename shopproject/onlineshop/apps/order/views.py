from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import Order, Product
from .forms import OrderForm
################################################################################## 
@login_required
def create_order(request):
    if 'order_items' not in request.session:
        request.session['order_items'] = []
    order_items = request.session['order_items']
    form = OrderForm()
    order_to_edit = None
    if request.method == 'POST':
        if 'add_item' in request.POST:
            form = OrderForm(request.POST)
            if form.is_valid():
                product = form.cleaned_data['product']
                quantity = form.cleaned_data['quantity']
                existing_item = next((item for item in order_items if item['product_id'] == product.id), None)
                if existing_item:
                    existing_item['quantity'] += quantity
                    existing_item['total_price'] = existing_item['price'] * existing_item['quantity']
                else:
                    order_items.append({
                        'product_id': product.id,
                        'product_name': product.name,
                        'quantity': quantity,
                        'price': float(product.price),
                        'total_price': float(product.price) * quantity
                    })
                request.session['order_items'] = order_items
                messages.success(request, 'محصول به لیست سفارش اضافه شد.')
                return redirect('order:create_order')
        elif 'edit_item' in request.POST:
            item_id = int(request.POST.get('item_id'))
            item_to_edit = next((item for item in order_items if item['product_id'] == item_id), None)
            if item_to_edit:
                form = OrderForm(initial={
                    'product': item_to_edit['product_id'],
                    'quantity': item_to_edit['quantity']
                })
                order_to_edit = item_id
        elif 'save_item' in request.POST:
            item_id = int(request.POST.get('item_id'))
            item_to_edit = next((item for item in order_items if item['product_id'] == item_id), None)
            if item_to_edit:
                form = OrderForm(request.POST)
                if form.is_valid():
                    item_to_edit['quantity'] = form.cleaned_data['quantity']
                    request.session['order_items'] = order_items
                    messages.success(request, 'محصول به‌روزرسانی شد.')
                    return redirect('order:create_order')
        elif 'delete_item' in request.POST:
            item_id = int(request.POST.get('item_id'))
            order_items = [item for item in order_items if item['product_id'] != item_id]
            request.session['order_items'] = order_items
            messages.success(request, 'محصول حذف شد.')
            return redirect('order:create_order')
        elif 'submit_order' in request.POST:
            for item in order_items:
                product = get_object_or_404(Product, id=item['product_id'])
                order = Order(
                    user=request.user,
                    product=product,
                    quantity=item['quantity'],
                    total_price=item['total_price'],
                    status=True
                )
                order.save()
            request.session['order_items'] = []
            messages.success(request, 'سفارش شما با موفقیت ثبت شد.')
            return redirect('order:order_list')
    context = {'form': form, 'order_items': order_items, 'order_to_edit': order_to_edit}
    return render(request, 'order/create_order.html', context)
################################################################################## 
@login_required
def order_list(request):
    orders = Order.objects.filter(user=request.user)
    return render(request, 'order/order_list.html', {'orders': orders})
