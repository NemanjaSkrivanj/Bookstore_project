// let products = []
// items.forEach(item => 
//     {
//         let title = item.querySelector('.movieName').innerHTML;
//         let quantity = +item.querySelector('.value').value;
//         let price = +item.querySelector('.cost').innerText.replace('$', '');
//         let product = {
//             price: price,
//             quantity: quantity,
//             title: title
//         }
//         products.push(product)
//     })
//     console.log(products);
//     localStorage.setItem('products', JSON.stringify(products));
//     const prods = JSON.parse(localStorage.getItem('products'))

const hamb = document.getElementById('hamb');
const links = document.querySelector('.links')

const Xcart = document.querySelector('.x-button');

const cart = document.querySelector('.shopping-cart');

const cartOpen = document.getElementById('cart-open')

const cartIcons = document.querySelectorAll('.addCart')

const cartItems = document.querySelector('.items');

const clearBtn = document.querySelector('.clear');

function clearCart()
{
    let items = cartItems.querySelectorAll('.item');
    items.forEach(item => 
        {
            item.remove();
            updateCartTotal()
        })
}

function quantityChanged()
{
    updateCartTotal()
}

function deleteItem(e)
{
    e.target.parentElement.parentElement.remove()
    updateCartTotal()
}

cartIcons.forEach(cartIcon => 
    {
        cartIcon.addEventListener('click', addToCart)
    })


function updateCartTotal()
{
    let items = cartItems.querySelectorAll('.item');
    var total = 0;
    items.forEach(item => 
        {
            let quantity = +item.querySelector('.value').value;
            let price = +item.querySelector('.cost').innerText.replace('$', '');
            total += quantity * price;
        })
    const totalPrice = document.querySelector('.total');
    totalPrice.innerHTML = total.toFixed(2);
}

function populateCart(price, title)
{

    var cartItemNames = cartItems.querySelectorAll('.movieName');
    for(let i = 0; i < cartItemNames.length; i++)
    {
        if(cartItemNames[i].innerText == title)
        {
            alert('This item is already added.')
            return;
        }
    }
    cartItems.innerHTML += `
                <div class="item" id="item">
                    <div class="title" id="title">
                        <h4>Item</h4>
                        <hr>
                        <h4 class="movieName">${title}</h4>
                    </div>
                    <div class="price" id="price">
                        <h4>Price</h4>
                        <hr>
                        <h4 class="cost">${price}</h4>
                    </div>
                    <div class="quantity" id="quantity">
                        <h4>Quantity</h4>
                        <hr>
                        <input type="number" name="quantity" id="quantity" class="value" min="1" value="1" onchange="quantityChanged()">
                        <button class="removeItem">Remove</button>
                    </div>
                </div>
    `

    const removeButtons = document.querySelectorAll('.removeItem');

    for(let i = 0; i < removeButtons.length; i++)
    {
        var button = removeButtons[i];
        button.addEventListener('click', deleteItem)
    }
    updateCartTotal()
}

function addToCart(e)
{
    const cartButton = e.target;
    let product = cartButton.parentElement.parentElement;
    let price = +product.querySelector('.price').innerText.replace('$', '');
    let title = product.querySelector('.title').innerText;
    console.log(price, title);
    populateCart(price, title);
    
    let prods = JSON.parse(localStorage.getItem('products'));
    if(prods != null)
    {
        var products = [...new Set(prods)];
        console.log(products);
    }
    else 
    {
        var products = [];
    }

    products.push({ title: title, price: price})
    
    console.log(products);
    localStorage.setItem('products', JSON.stringify(products));
    console.log(localStorage);
    cart.classList.remove('deactivated')
}

Xcart.addEventListener('click', () => 
{
    cart.classList.add('deactivated');
})

hamb.addEventListener('click', () => 
{
    links.classList.add('activated');
})

cartOpen.addEventListener('click', () => 
{
    cart.classList.remove('deactivated')
})

clearBtn.addEventListener('click', clearCart)
