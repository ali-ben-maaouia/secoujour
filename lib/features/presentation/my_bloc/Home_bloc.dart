import 'package:flutter_bloc/flutter_bloc.dart';
import 'Home_event.dart';
import 'Home_state.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(InitialState());

  @override
  Stream<MyState> mapEventToState(MyEvent event) async* {
    if (event is FetchData) {
      yield LoadingState();
      try {
        // Simulate fetching data from a repository
        await Future.delayed(Duration(seconds: 2));
        final data = ['Item 1', 'Item 2', 'Item 3'];
        yield LoadedState(data);
      } catch (e) {
        yield ErrorState(e.toString());
      }
    }
  }
}
