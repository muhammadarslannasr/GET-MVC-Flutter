import 'package:flutter/material.dart';
import 'package:flutter_get_api_mvc/controllers/product_controller.dart';
import 'package:flutter_get_api_mvc/local_database/task_dao.dart';
import 'package:flutter_get_api_mvc/views/breaking_news_page.dart';
import 'package:flutter_get_api_mvc/views/nearby_locations_page.dart';
import 'package:flutter_get_api_mvc/views/product_tile.dart';
import 'package:flutter_get_api_mvc/views/tutorial_coach_mark_page.dart';
import 'package:flutter_get_api_mvc/widgets/skelton_loading_animation_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HomePage extends StatelessWidget {
  final TaskDao dao;
  HomePage({
    this.dao,
  });

  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.transparent,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                Get.to(BreakingNewsPage());
              })
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'ShopX',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.view_list_rounded),
                    onPressed: () {
                      //Get.to(TasksPage(title: 'Tasks Local DB', dao: dao));
                      Get.to(NearbyLocationsPage());
                    }),
                IconButton(
                    icon: Icon(Icons.grid_view),
                    onPressed: () {
                      Get.to(TutorialCoachMarkPage());
                    }),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value)
                // return Center(child: CircularProgressIndicator());
                return SkeltonLoadingAnimation();
              else
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productController.productList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return ProductTile(productController.productList[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
            }),
          )
        ],
      ),
    );
  }
}
