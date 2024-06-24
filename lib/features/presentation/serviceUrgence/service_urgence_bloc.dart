import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'service_urgence_event.dart';
part 'service_urgence_state.dart';

class ServiceUrgenceBloc extends Bloc<ServiceUrgenceEvent, ServiceUrgenceState> {
  ServiceUrgenceBloc() : super(ServiceUrgenceInitial()) {
    on<ServiceUrgenceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
