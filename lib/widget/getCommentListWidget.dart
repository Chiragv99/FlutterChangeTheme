
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../viewmodel/Comment/comment_list_viewmodel.dart';
import 'customProgressDialoug.dart';

class GetCommentListWidget extends StatelessWidget {
  CommentListViewModel commentListViewModel = Get.put(CommentListViewModel());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(() => commentListViewModel.isLoading.value ? Text(commentListViewModel.posts!.length.toString()) :  CustomProgressDialoug());
  }

}