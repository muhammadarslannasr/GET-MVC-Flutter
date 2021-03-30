import 'package:flutter_get_api_mvc/models/breaking_news_model.dart';
import 'package:flutter_get_api_mvc/models/event_check_in_status_model.dart';
import 'package:flutter_get_api_mvc/models/events_nearby_model.dart';
import 'package:flutter_get_api_mvc/models/product.dart';
import 'package:flutter_get_api_mvc/services/remote_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>().obs;
  var breakingModel = BreakingNewsModel().obs;
  var nearbyEventsModel = EventsNearbyModel().obs;
  var eventCheckInNearbyStatus = EventCheckInStatusModel().obs;

  @override
  void onInit() {
    fetchProducts();
    fetchBreakingNews();
    fetchNearbyEvents();
    fetchEventCheckInStatus();
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

  void fetchNearbyEvents() async {
    try {
      isLoading(true);
      var nearbyEvents = await RemoteServices.fetchNearbyEvents();
      if (nearbyEvents != null) {
        nearbyEventsModel.value = nearbyEvents;
        print('NearbyEvents Lenght is:${nearbyEventsModel.value.data.length}');
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchEventCheckInStatus() async {
    try {
      isLoading(true);
      var eventCheckInStatus = await RemoteServices.fetchEventCheckInStatus();
      if (eventCheckInStatus != null) {
        eventCheckInNearbyStatus.value = eventCheckInStatus;
        print('eventCheckInNearbyStatus Lenght is:${eventCheckInNearbyStatus.value.data.organizer.length}');
      }
    } finally {
      isLoading(false);
    }
  }
}
