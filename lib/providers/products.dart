import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Sunglass',
      description: 'Classic sunglass!',
      price: 29.99,
      imageUrl:
          'https://images.unsplash.com/photo-1589782182703-2aaa69037b5b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80',
          // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Purfume',
      description: 'Codes of masculine beauty with mystery and unconventionality.',
      price: 59.99,
      imageUrl:
          'https://images.unsplash.com/photo-1592842232655-e5d345cbc2d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80',
          // 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Wallet',
      description: 'A fur wallet crafted from leather.',
      price: 24.99,
      imageUrl:
          'https://images.unsplash.com/photo-1570549667552-8a73ebf96469?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1797&q=80',
          // 'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Watch',
      description: 'Ultimate Outdoor Watch.',
      price: 649.99,
      imageUrl:
          'https://images.unsplash.com/photo-1549972574-8e3e1ed6a347?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
          // 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Shoe',
      description: 'Handcrafted dress Shoe.',
      price: 349.99,
      imageUrl:
          'https://images.unsplash.com/photo-1611937674427-01cd37d36732?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',
    ),
    Product(
      id: 'p6',
      title: 'Shirt',
      description: 'Great shirt, looked good feel great',
      price: 79.99,
      imageUrl:
          'https://images.unsplash.com/photo-1602810316693-3667c854239a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',
    ),
    Product(
      id: 'p7',
      title: 'Suite',
      description: 'Well fitting Suite for slim build!',
      price: 3999.99,
      imageUrl:
          'https://images.unsplash.com/photo-1522968439036-e6338d0ed84f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80',
    ),
    Product(
      id: 'p8',
      title: 'Shaver',
      description: 'Men\'s grooming choice',
      price: 149.99,
      imageUrl:
          'https://images.unsplash.com/photo-1508380702597-707c1b00695c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',
    ),

    
  ];
  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    //_items.add(value);
    notifyListeners();
  }
}
