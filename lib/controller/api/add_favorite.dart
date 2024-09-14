import 'package:get/get.dart';
import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/controller/pages_controller/favorite_cotroller.dart';
import 'package:medicine/model/medicine.dart';

class AddFavoriteService {
  final FavoriteController mycontrollel =
      Get.put(FavoriteController(), permanent: true);

  Future AddFavorite(int medicine_id) async {
    Map<String, dynamic> data = await ApiController()
        .post(url: 'addFavorite', body: {'medicine_id': medicine_id});
    if (data['messege'] == '3333333') {
      mycontrollel.addtofavorites(medicine_id);
    }
  }
}
