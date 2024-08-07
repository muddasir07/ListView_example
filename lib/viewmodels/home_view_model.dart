import 'package:demo_app/data/models/listModel.dart';
import 'package:demo_app/data/services/api_service.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  var listItems = <ListModel>[].obs;
  final ApiService _apiService = ApiService();
  RxBool isItemsLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    fetchListItems();
  }

  void fetchListItems() async { 
    isItemsLoading(true);
    try {
      var items = await _apiService.getListItems();
      listItems.assignAll(items);
    } finally {
      isItemsLoading(false);
    }
  }
}
