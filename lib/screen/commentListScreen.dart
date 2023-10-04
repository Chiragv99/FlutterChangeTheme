import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercustomtheme/controller/theme_controller.dart';
import 'package:fluttercustomtheme/widget/getCommentListWidget.dart';
import 'package:get/get.dart';

class CommentListScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CommentListStateScreen();

}
class _CommentListStateScreen extends State<CommentListScreen>{
 ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            color: themeController.currentTheme().bG
        ),
        child: Column(
          children: [
            Text(
              "Comment List",
              style: TextStyle(
                  color: themeController.currentTheme().titleColor,fontSize: themeController.currentTheme().titleSize,fontWeight: FontWeight.bold
              ),
            ),
            Expanded(child:
            GetCommentListWidget())
          ],
        ),
      )),
    );
  }

}