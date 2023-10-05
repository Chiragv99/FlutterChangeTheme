
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercustomtheme/controller/theme_controller.dart';
import 'package:fluttercustomtheme/widget/getPostListWidget.dart';
import 'package:get/get.dart';

import '../api/apiService.dart';

class PostListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostListScreenStateScreen();

}

class _PostListScreenStateScreen extends State<PostListScreen>{
  ThemeController themeController = Get.put(ThemeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final result =  ApiService().getSaveRoomResponse();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          body: Container(
          decoration: BoxDecoration(
            color: themeController.currentTheme().bG
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child:   Text(
                    "Post List",
                    style: TextStyle(
                        color: themeController.currentTheme().titleColor,fontSize: themeController.currentTheme().titleSize,fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GetPostListWidget()
              ],
            ),
          ),
        )
    );
  }

}