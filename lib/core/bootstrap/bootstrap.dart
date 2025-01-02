import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita_apps/core/extensions/bloc_base.dart';

class AppBlocObserver extends BlocObserver {
  final Set<BlocBase> _aliveBlocs = {};

  @override
  void onCreate(BlocBase bloc) {
    _aliveBlocs.add(bloc);
    debugPrint('${bloc.arrangedString} was created');
    debugPrint('Current Alive Bloc : ${_aliveBlocs.arrangedString}');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    _aliveBlocs.remove(bloc);
    debugPrint('${bloc.arrangedString} was removed');
    debugPrint('Current Alive Bloc : ${_aliveBlocs.arrangedString}');
    super.onClose(bloc);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    debugPrint('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    debugPrint('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  Bloc.observer = AppBlocObserver();

  runApp(await builder());
}
