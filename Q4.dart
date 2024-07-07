void main() {
  User user = User('rahma', 20);
  Product product = Product('Laptop', 1200.0);

String userJson = user.toJson();
String productJson = product.toJson();

  print('User JSON:');
  print(userJson);

  print('\nProduct JSON:');
  print(productJson);
}

// Task 4: Implement an Interface with Multiple Classes
abstract class Serializable {
  String toJson();
}

class User implements Serializable {
  final String name;
  final int age;
  User(this.name, this.age);

  @override
  String toJson() {
    return '{name:$name,age:$age}';
  }
}

class Product implements Serializable {
  final String name;
  final double price;
  Product(this.name, this.price);

  @override
 String toJson() {
    return '{name:$name,price:$price}';
    }
  }

