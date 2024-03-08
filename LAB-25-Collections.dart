class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

void main() {
  List<Product> shoppingCart = [];

  // Add items to the cart
  Product item1 = Product('Shirt', 20.99, 2);
  Product item2 = Product('Jeans', 34.99, 1);
  shoppingCart.add(item1);
  shoppingCart.add(item2);

  // Calculate the total price
  double totalPrice = shoppingCart.fold(0, (sum, item) => sum + (item.price * item.quantity));
  print('Total price: \$$totalPrice');

  // Remove an item
  shoppingCart.remove(item1);
  print('Updated shopping cart after removing an item: $shoppingCart');
}