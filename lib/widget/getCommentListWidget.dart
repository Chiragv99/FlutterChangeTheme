
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../viewmodel/Comment/comment_list_viewmodel.dart';
import 'customProgressDialoug.dart';

class GetCommentListWidget extends StatelessWidget {
  CommentListViewModel commentListViewModel = Get.put(CommentListViewModel());

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
    Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),child:   Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Text(commentListViewModel.posts![index].name),
    ));

  }

}