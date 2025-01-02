import 'package:vita_apps/core/constants/app_const.dart';
import 'package:vita_apps/features/login/model/login_model.dart';
import 'package:vita_apps/main.dart';

class LoginDataManager {
  static void saveLoginData(LoginModel loginModel) {
    box!.put(AppConst.loginDataKey, loginModel.toJson());
  }

  static LoginModel? getLoginData() {
    final Map<dynamic, dynamic>? loginData = box!.get(AppConst.loginDataKey);

    if (loginData != null) {
      return LoginModel.fromJson(loginData);
    }
    return null;
  }

  static void removeLoginData() {
    box!.delete(AppConst.loginDataKey);
  }
}
