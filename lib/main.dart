import 'package:flutter/material.dart';
import 'package:fluttercustomtheme/routes/routes.dart';
import 'package:fluttercustomtheme/screen/homescreen.dart';
import 'package:fluttercustomtheme/screen/loginscreen.dart';
import 'package:fluttercustomtheme/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme:  TAppTheme.largeTheme,
        darkTheme: TAppTheme.darkTheme,
        getPages: AppRoutes.appRoutes()
    );
  }
}
