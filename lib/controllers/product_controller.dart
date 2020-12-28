import 'package:flutter_get_api_mvc/models/breaking_news_model.dart';
import 'package:flutter_get_api_mvc/models/product.dart';
import 'package:flutter_get_api_mvc/services/remote_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>().obs;
  var breakingModel = BreakingNewsModel().obs;

  @override
  void onInit() {
    fetchProducts();
    fetchBreakingNews();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        //productList.value = products;
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchBreakingNews() async {
    try {
      isLoading(true);
      var breakingNews = await RemoteServices.fetchBreakingNews();
      if (breakingNews != null) {
        breakingModel.value = breakingNews;
        print('Breaking News Lenght is:${breakingModel.value.result.length}');
      }
    } finally {
      isLoading(false);
    }
  }
}
