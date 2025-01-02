import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:sizer/sizer.dart';
import 'package:vita_apps/core/storage/open_box.dart';
import 'core/router/router.dart';
import 'core/bootstrap/bootstrap.dart';
import 'core/environment/environment.dart';
import 'core/gen/injection.dart';

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
  Widget build(BuildContext context) => Sizer(
        builder: (context, _, __) => MaterialApp.router(
          debugShowCheckedModeBanner: kDebugMode || kProfileMode,
          themeMode: ThemeMode.system,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          builder: (context, child) => GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: child,
          ),
          routerConfig: AppRouter.router,
        ),
      );
}
