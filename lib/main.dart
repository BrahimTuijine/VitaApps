import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sizer/sizer.dart';
import 'package:vita_apps/core/storage/open_box.dart';
import 'package:vita_apps/features/dark_mode/theme_cubit.dart';

import 'core/bootstrap/bootstrap.dart';
import 'core/environment/environment.dart';
import 'core/gen/injection.dart';
import 'core/router/router.dart';

Box? box;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  box = await openBox('MovieApp');
  await dotenv.load(fileName: Env.fileName);
  configureDependencies();
  // initialize hydrated bloc
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  bootstrap(() => const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, ThemeMode mode) {
            return Sizer(
              builder: (context, _, __) => MaterialApp.router(
                debugShowCheckedModeBanner: kDebugMode || kProfileMode,
                themeMode: mode,
                theme: ThemeData.light(),
                darkTheme: ThemeData.dark(),
                builder: (context, child) => GestureDetector(
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  child: child,
                ),
                routerConfig: AppRouter.router,
              ),
            );
          },
        ),
      );
}
