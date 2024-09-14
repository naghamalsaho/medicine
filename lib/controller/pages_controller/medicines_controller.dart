import 'package:get/get.dart';
import 'package:medicine/controller/api/get_all_medicines_controller.dart';
import 'package:medicine/model/medicine.dart';

class MedicineController extends GetxController {
  var selMedicine = Rx<MedicineModel?>(null);
  
  final Future <List<MedicineModel>> AllMedicines =
      getAllMedicineService().getAllMedicine();

      
      //drop_down_list: ^0.0.6
  //get_storage: ^2.1.1
}
