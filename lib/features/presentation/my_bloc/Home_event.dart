import 'package:equatable/equatable.dart';

abstract class MyEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchData extends MyEvent {}
