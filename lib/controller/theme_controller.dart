import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../theme/themes.dart';
import '../theme/themes_model.dart';

class ThemeController extends GetxController{
  /// Selected index of BottomSheet
  var bottomSheetColorIndex = 0;

  /// Current Theme
  ThemesModel currentTheme() {
    return ThemesModel(
        titleColor: listOfThemes[bottomSheetColorIndex].titleColor,
        subTitlelColor: listOfThemes[bottomSheetColorIndex].subTitlelColor,
        bG: listOfThemes[bottomSheetColorIndex].bG,
        iconColor: listOfThemes[bottomSheetColorIndex].iconColor,
        appBarColor: listOfThemes[bottomSheetColorIndex].appBarColor,
        cardColor: listOfThemes[bottomSheetColorIndex].cardColor,
        buttonBg: listOfThemes[bottomSheetColorIndex].buttonBg,
        headerBg:listOfThemes[bottomSheetColorIndex].headerBg,
        progressbarBg:listOfThemes[bottomSheetColorIndex].progressbarBg,
        titleSize: listOfThemes[bottomSheetColorIndex].titleSize,
        subtitleSize: listOfThemes[bottomSheetColorIndex].subtitleSize,
        bodyColor: listOfThemes[bottomSheetColorIndex].bodyColor
    );

  }

  /// Function For Changing Selected Border Color
   changeBottomSheetBorderColor(int index) {
    bottomSheetColorIndex = index;
    update();
  }
}