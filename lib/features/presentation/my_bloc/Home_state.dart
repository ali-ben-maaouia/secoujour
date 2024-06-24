import 'package:equatable/equatable.dart';

abstract class MyState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends MyState {}

class LoadingState extends MyState {}

class LoadedState extends MyState {
  final List<String> data;

  LoadedState(this.data);

  @override
  List<Object> get props => [data];
}

class ErrorState extends MyState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object> get props => [message];
}
