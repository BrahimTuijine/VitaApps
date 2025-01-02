import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:sizer/sizer.dart';
import 'package:vita_apps/core/storage/open_box.dart';
import 'package:vita_apps/core/theme/theme.dart';

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

  bootstrap(() => const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => Sizer(builder: (context, _, __) {
        return ThemeProvider(
            initTheme: lightTheme,
            builder: (_, myTheme) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: kDebugMode || kProfileMode,
                theme: myTheme,
                builder: (context, child) => GestureDetector(
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  child: child,
                ),
                routerConfig: AppRouter.router,
              );
            });
      });
}
