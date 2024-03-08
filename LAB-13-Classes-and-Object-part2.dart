class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product product = Product("Widget", 10.99, 5);
  double totalCost = product.calculateTotalCost();

  print("Product: ${product.name}");
  print("Total Cost: $totalCost");
}