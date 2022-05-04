import 'package:bloc/bloc.dart';
import 'package:bloc_example/utils/base_equatable.dart';
import 'package:meta/meta.dart';

part 'second_event.dart';
part 'second_state.dart';

class SecondBloc extends Bloc<SecondEvent, SecondState> {
  SecondBloc() : super(SecondInitial()) {
    on<SecondEvent>((event, emit) {
      print(event);
    });
  }
}
