import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'products_events.dart';
part 'products_state.dart';

class HomeBloc extends Bloc<ProductEvent, ProductsState> {
  ProductBloc() : super(HomeInitial()) {
    on<ProductEntrarPressed>((event, emit) async {
      final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        emit(HomeLoadSuccess());
      } else {
        emit(HomeLoadFailure());
      }
    });
  }
}