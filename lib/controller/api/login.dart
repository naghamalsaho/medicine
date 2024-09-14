import 'package:get/get.dart';
import 'package:medicine/controller/api/api_controller.dart';

class LoginService {
  Future Login(String phone, String pass) async {
    Map<String, dynamic> response = await ApiController().post(
      url: 'login',
      body: {
        'phone': phone,
        'password': pass,
      },
    );
    String token = response['data']['token'];
    print(token);
    if (response['status'] == 1) {
      Get.toNamed('/afterlogin');
    } else {
      Get.defaultDialog(
          title: "waring", middleText: "the phone must be is 10 digits");
    }
  }
}
