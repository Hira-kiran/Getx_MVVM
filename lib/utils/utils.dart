import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../res/Color/colors.dart';

class Utils {
  static toastClass(String msg) {
    Fluttertoast.showToast(msg: msg, backgroundColor: AppColors.blueColor);
  }

  static snackbar(String title, String msg) {
    Get.snackbar(title, msg,
        backgroundColor: AppColors.blueColor,
        snackPosition: SnackPosition.BOTTOM);
  }
}
