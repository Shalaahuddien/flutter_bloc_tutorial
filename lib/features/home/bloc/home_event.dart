// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent{}

class HomeProductWishlistButtonClickedEvent extends HomeEvent {
  final ProductDataModel clickedProduct;
  HomeProductWishlistButtonClickedEvent({
    required this.clickedProduct,
  });
}

class HomeProductCartButtonClickedEvent extends HomeEvent {
  final ProductDataModel clickedProduct;
  HomeProductCartButtonClickedEvent({
    required this.clickedProduct,
  });
}

class HomeWishlistButtonNavigateEvent extends HomeEvent{}

class HomeCartButtonNavigateEvent extends HomeEvent{}