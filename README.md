# 🛒 Shoe Shop App

Welcome to the **Shoe Shop App**, a Flutter-based e-commerce application designed to provide a seamless shopping experience for customers. This app demonstrates features like adding items to the cart, viewing product details, and managing cart operations—all powered by **Provider** for state management.

## 📸 Screenshots

> Add screenshots or mockups of your app here to showcase its UI and features.

## ✨ Features

- **Product Catalog**: Browse through a list of stylish and trendy shoes.
- **Add to Cart**: Add your favorite shoes to the cart effortlessly.
- **Cart Management**: View and manage items in the cart, including the ability to remove items.
- **State Management**: Smooth and efficient state handling using the `Provider` package.
- **Customizable UI**: Leveraging Flutter's widgets and `Theme` for a user-friendly interface.

## 🛠️ Technology Stack

- **Frontend**: Flutter
- **State Management**: Provider
- **Language**: Dart

## 🚀 Getting Started

### Prerequisites

- Install [Flutter SDK](https://flutter.dev/docs/get-started/install).
- Install a code editor (e.g., [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)).
- Connect a device or set up an emulator.

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/shoe-shop-app.git
   ```

2. Navigate to the project directory:

   ```bash
   cd shoe-shop-app
   ```

3. Fetch the dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## 🧩 Folder Structure

```
├── lib
│   ├── models          # Data models for the app
│   ├── providers       # State management files (Provider)
│   ├── screens         # UI screens (Home, Cart, etc.)
│   ├── widgets         # Reusable widgets
│   └── main.dart       # Main entry point of the app
```

## 🌟 Key Code Highlights

### Cart Management with Provider

```dart
class CartProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _cart = [];

  List<Map<String, dynamic>> get cart => _cart;

  void addProduct(Map<String, dynamic> product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeProduct(Map<String, dynamic> product) {
    _cart.remove(product);
    notifyListeners();
  }
}
```

### Adding Items to Cart

```dart
ElevatedButton.icon(
  onPressed: () {
    Provider.of<CartProvider>(context, listen: false).addProduct({
      'title': 'Stylish Sneakers',
      'size': 9,
      'imageUrl': 'assets/sneakers.png',
    });
  },
  icon: Icon(Icons.shopping_cart),
  label: Text('Add To Cart'),
),
```

## 📚 Learning Outcomes

- Hands-on experience with **Flutter** and **Provider**.
- Implementing **state management** in real-world scenarios.
- Creating dynamic and responsive UI components.
