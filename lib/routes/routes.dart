import 'package:fluttercustomtheme/screen/commentListScreen.dart';
import 'package:fluttercustomtheme/screen/postListScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../screen/homescreen.dart';
import '../screen/loginscreen.dart';
import '../screen/signup.dart';
import '../uttils/route_name.dart';

class AppRoutes{
  static appRoutes() =>[

    GetPage(
        name:RouteName.splashScreen,
        page: () =>  LoginScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
    GetPage(
        name:RouteName.loginscreen,
        page: () => LoginScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
    GetPage(
        name:RouteName.signupscreen,
        page: () => SignupScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
    GetPage(
        name:RouteName.commentscreen,
        page: () => CommentListScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
    GetPage(
        name:RouteName.postlistcreen,
        page: () => PostListScreen(),
        transitionDuration:const Duration(milliseconds: 250),
        transition:Transition.leftToRightWithFade
    ),
  ];
}