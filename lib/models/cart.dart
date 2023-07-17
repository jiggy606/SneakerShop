import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of items for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Gerard Valkryie',
      price: '800',
      imagePath: 'lib/images/tayo.jpg',
      description: 'This is a flash enemy with the ability of super speed',
    ),
    Shoe(
      name: 'Gotie 13',
      price: '1500',
      imagePath: 'lib/images/tim.jpg',
      description: 'This is a flash enemy with the ability of super speed',
    ),
    Shoe(
      name: 'Zaraki Kenpachi',
      price: '700',
      imagePath: 'lib/images/tayo.jpg',
      description: 'This is a flash enemy with the ability of super speed',
    ),
    Shoe(
      name: 'Lille Barro',
      price: '750',
      imagePath: 'lib/images/tobi.jpg',
      description: 'This is a flash enemy with the ability of super speed',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // adding items
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
