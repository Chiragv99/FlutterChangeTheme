
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../api/apiService.dart';
import 'getbrand_view_model.dart';

class GetBrandListViewModel extends GetxController{
  GetBrandViewModel posts = GetBrandViewModel();
  var isLoading  = false.obs;


  // For get Comment Data.
  getCommentData() async{
    final result = await ApiService().getSaveRoomResponse();
    isLoading.value = true;
    if(result != null){
      posts = GetBrandViewModel(getCommentModel: result);
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