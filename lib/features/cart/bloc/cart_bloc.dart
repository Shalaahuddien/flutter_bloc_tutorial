import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_block_tutorial/data/carts_items.dart';
import 'package:flutter_block_tutorial/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFromCartEvent(CartRemoveFromCartEvent event, Emitter<CartState> emit) {

    cartItems.remove(event.productDataModel);

    // emit()

    emit(CartSuccessState(cartItems: cartItems));

    // get your cart items
    // check is your product models there in your cartItems - true
    // run a function to remove that product models from thats cart items
    // emit a cart items remove state 
  }
}
