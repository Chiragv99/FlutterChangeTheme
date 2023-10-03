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
  ];
}