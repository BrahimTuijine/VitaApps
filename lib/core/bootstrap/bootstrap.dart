import 'dart:async';
import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita_apps/core/extensions/bloc_base.dart';

class AppBlocObserver extends BlocObserver {
  final Set<BlocBase> _aliveBlocs = {};

  @override
  void onCreate(BlocBase bloc) {
    _aliveBlocs.add(bloc);
    log('${bloc.arrangedString} was created');
    log('Current Alive Bloc : ${_aliveBlocs.arrangedString}');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    _aliveBlocs.remove(bloc);
    log('${bloc.arrangedString} was removed');
    log('Current Alive Bloc : ${_aliveBlocs.arrangedString}');
    super.onClose(bloc);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // FlutterError.onError = (details) {
  //   log(details.exceptionAsString(), stackTrace: details.stack);
  // };

  Bloc.observer = AppBlocObserver();

  // Add cross-flavor configuration here

  runApp(await builder());
}
