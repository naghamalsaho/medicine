import 'package:get/get.dart';
import 'package:medicine/model/medicine.dart';

class DetailsControllerPage extends GetxController {
  late MedicineModel medicinedata;
  @override
  void onInit() {
    medicinedata = Get.arguments ;
    super.onInit();
  }
}
