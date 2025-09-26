import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('------>> from blocObserver $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('------>> from blocObserver close -->> $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('------>> from blocObserver create -->> $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}