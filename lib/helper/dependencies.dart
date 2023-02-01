import 'package:ecommerce_app/controllers/popular_product_controller.dart';
import 'package:ecommerce_app/data/api/api_client.dart';
import 'package:ecommerce_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //apiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: ""));
//repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
//controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
