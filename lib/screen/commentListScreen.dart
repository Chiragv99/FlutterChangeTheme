import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercustomtheme/controller/theme_controller.dart';
import 'package:fluttercustomtheme/uttils/route_name.dart';
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
            const SizedBox(
              height: 15,
            ),
            Text(
              "Comment List",
              style: TextStyle(
                  color: themeController.currentTheme().titleColor,fontSize: themeController.currentTheme().titleSize,fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(child:
            GetCommentListWidget()),
            SizedBox(
              width: Get.width / 2,
              height: 60,
              child:  TextButton(onPressed: () {
               print("Post"+"Post");
               Get.toNamed(RouteName.postlistcreen);
              },style:  ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(themeController.currentTheme().buttonBg),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: Colors.grey),
                      )
                  )
              ), child: const Text("Get Post",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
              ),)
          ],
        ),
      )),
    );
  }

}