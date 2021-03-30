import 'package:flutter/material.dart';
import 'package:flutter_get_api_mvc/controllers/product_controller.dart';
import 'package:get/get.dart';

class NearbyLocationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Locations'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else
                return ListView.builder(
                  itemCount:
                  productController.nearbyEventsModel.value.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                         productController.nearbyEventsModel.value.data[index].langs.en.image != null ? productController.nearbyEventsModel.value.data[index].langs.en.image : 'https://www.planetware.com/wpimages/2020/01/india-in-pictures-beautiful-places-to-photograph-taj-mahal.jpg',
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        productController
                            .nearbyEventsModel.value.data[index].langs.en.title,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        productController
                            .nearbyEventsModel.value.data[index].langs.en.address,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      trailing: Icon(
                        Icons.ios_share,
                        //size: 12,
                      ),
                    );
                  },
                );
            }),
          ),
        ],
      ),
    );
  }
}
