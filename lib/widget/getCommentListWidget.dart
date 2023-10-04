
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/theme_controller.dart';
import '../viewmodel/Comment/comment_list_viewmodel.dart';
import 'customProgressDialoug.dart';

class GetCommentListWidget extends StatelessWidget {
  CommentListViewModel commentListViewModel = Get.put(CommentListViewModel());

  ThemeController themeController = Get.put(ThemeController());


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Obx(() => commentListViewModel.isLoading.value ? ListView.builder(
      itemCount: commentListViewModel.posts!.length,
      itemBuilder: (context, index) {
       return getListData(index,context);
    },) :  CustomProgressDialoug());
  }

  getListData(int index, BuildContext context) {
    return
    Padding(padding: const EdgeInsets.only(left: 10,right: 10,top: 0),child:   Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child:  Padding(padding: const EdgeInsets.all(10),child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(commentListViewModel.posts![index].name,style:  TextStyle(
              color: themeController.currentTheme().titleColor,fontSize: themeController.currentTheme().titleSize,fontWeight: FontWeight.bold
          ),),
          Text(commentListViewModel.posts![index].email,style:  TextStyle(
              color: themeController.currentTheme().subTitlelColor,fontSize: themeController.currentTheme().subtitleSize,fontWeight: FontWeight.bold
          ),),
          SizedBox(
            width: Get.width,
            child:  Text(commentListViewModel.posts![index].body,style:  TextStyle(
                color: themeController.currentTheme().bodyColor,fontSize: themeController.currentTheme().subtitleSize,fontWeight: FontWeight.bold
            ),),
          ),
        ],
      )
     ,) ,
    ));

  }

}