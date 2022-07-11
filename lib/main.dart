import 'package:exchange/providers/theme_provider.dart';
import 'package:exchange/ui/ui_helper/ThemeSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ],
    child: MyMaterialApp(),
  ));
}

class MyMaterialApp extends StatefulWidget {
  MyMaterialApp({super.key});

  @override
  State<MyMaterialApp> createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: ((context, ThemeProvider, child) {
        return MaterialApp(
          themeMode: ThemeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          debugShowCheckedModeBanner: false,
          home: Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
              appBar: AppBar(
                actions: [ThemeSwitcher()],
                title: Text('Karami Exchange'),
                centerTitle: true,
              ),
              body: Container(),
            ),
          ),
        );
      }),
    );
  }
}
