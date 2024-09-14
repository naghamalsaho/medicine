import 'package:get/get.dart';
import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/controller/pages_controller/add_order_controller.dart';

class AddOrderService {
  final AddOrderController controller =
      Get.put(AddOrderController(), permanent: true);

  Future addOrder() async {
    // Map<String, dynamic> orders = {"medicine_name": name, "quantity": quantity};

    await ApiController().Send(url: 'addOrder', body: controller.order);
    // order.clear();
    print(controller.order);
    controller.clraeitem();
  }
}
