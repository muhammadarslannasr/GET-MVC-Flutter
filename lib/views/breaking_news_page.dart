import 'package:flutter/material.dart';
import 'package:flutter_get_api_mvc/controllers/product_controller.dart';
import 'package:flutter_get_api_mvc/models/product.dart';
import 'package:get/get.dart';

class BreakingNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Breaking News'),
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
                      productController.breakingModel.value.result.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(productController.breakingModel.value.result[index].images.imageDefault),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        productController
                            .breakingModel.value.result[index].title,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        productController
                            .breakingModel.value.result[index].shotDesc,
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
