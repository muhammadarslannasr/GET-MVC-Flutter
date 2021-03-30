import 'package:flutter_get_api_mvc/models/breaking_news_model.dart';
import 'package:flutter_get_api_mvc/models/event_check_in_status_model.dart';
import 'package:flutter_get_api_mvc/models/events_nearby_model.dart';
import 'package:flutter_get_api_mvc/models/product.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(
        'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<BreakingNewsModel> fetchBreakingNews() async {
    var response = await client.get(
        'https://api.nationbytes.com/news-post/Breaking/1/e5d02e785bbee1ee7e7a6268961b0941/');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return breakingNewsModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<EventsNearbyModel> fetchNearbyEvents() async {
    Map<String, String> qParams = {
      'lan': '21.3890824',
      'long': '39.8579118',
    };

    var response = await client.post(
      'http://app.alharmonica.com/api/v1/get-events',
      body: qParams
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('Response is:' + jsonString);
      return eventsNearbyModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<EventCheckInStatusModel> fetchEventCheckInStatus() async {
    Map<String, String> qParams = {
      'event_id': '43',
      'user_id': '5',
    };

    var response = await client.post(
        'http://app.alharmonica.com/api/v1/user-event-check-in-status',
        body: qParams
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('Response is Check In Status:' + jsonString);
      return eventCheckInStatusModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
