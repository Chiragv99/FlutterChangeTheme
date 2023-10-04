import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercustomtheme/controller/theme_controller.dart';
import 'package:get/get.dart';

class CustomProgressDialoug extends StatelessWidget {
  CustomProgressDialoug({Key? key}) : super(key: key);

  ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Dialog(
      // The background color
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // The loading indicator
            CircularProgressIndicator(color: themeController.currentTheme().progressbarBg),
            const SizedBox(
              height: 15,
            ),
            // Some text
            const Text('Loading...')
          ],
        ),
      ),
    );
  }

}