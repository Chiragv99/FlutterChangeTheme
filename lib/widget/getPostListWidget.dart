
import 'package:flutter/cupertino.dart';
import 'package:fluttercustomtheme/viewmodel/GetBrand/getbrand_list_viewmodel.dart';
import 'package:get/get.dart';

import '../controller/theme_controller.dart';
import 'customProgressDialoug.dart';

class GetPostListWidget extends StatefulWidget {


  @override
  _GetPostListScreenStateScreen createState() => _GetPostListScreenStateScreen();

}

class _GetPostListScreenStateScreen extends State<GetPostListWidget>{
  GetBrandListViewModel  commentListViewModel = Get.put(GetBrandListViewModel());
  ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(() => commentListViewModel.isLoading.value ? Column(
      children: [
        Text(commentListViewModel.posts.getCommentModel!.id.toString()),
        Text(commentListViewModel.posts.getCommentModel!.createdAt.toString())
      ],
    )
     :  CustomProgressDialoug());
  }

}