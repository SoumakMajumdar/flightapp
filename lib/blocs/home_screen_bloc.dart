import 'dart:async';

import 'bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreenBloc implements BlocBase {

  StreamController<bool> flightSelectedController = PublishSubject<bool>();

  Function(bool) get updateFlightSelection => flightSelectedController.sink.add;

  Stream<bool> get isFlightSelectedStream => flightSelectedController.stream;

  @override
  void dispose() {
    print('disposed home screen bloc');
    flightSelectedController.close();
  }
}