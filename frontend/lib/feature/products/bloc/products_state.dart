part of 'products_bloc.dart';


sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends ProductsState {}

final class HomeLoadInProgress extends ProductsState {}

final class HomeLoadFailure extends ProductsState {}

final class HomeLoadSuccess extends HomeState {}
