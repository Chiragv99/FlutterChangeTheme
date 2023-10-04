import 'package:fluttercustomtheme/api/apiService.dart';
import 'package:fluttercustomtheme/viewmodel/Comment/comment_view_model.dart';
import 'package:get/get.dart';

class CommentListViewModel extends GetxController{
  List<CommentViewModel>? posts = RxList<CommentViewModel>();
  var isLoading  = false.obs;

  // For get Comment Data.
  getCommentData() async{
    final result = await ApiService().getCommentList();
    isLoading.value = true;
    if(result != null){
     posts = result.map((comment) =>  CommentViewModel(getCommentModel: comment)).toList();
   //  isLoading.value = false;
    }
    else{
   //   isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getCommentData();
  }
}