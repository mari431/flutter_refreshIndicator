import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/refresh_indicator_controller.dart';

class RefreshIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RefreshController refreshController = Get.put(RefreshController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Multi-Colored ListTiles with GetX'),
      ),
      body: Obx(
            () => RefreshIndicator(
          onRefresh: refreshController.refreshColors,
          child: ListView.builder(
            itemCount: refreshController.colors.length,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      color: refreshController.colors[index],
                      child: ListTile(
                        title: Text('Item $index',style: TextStyle(fontSize: 30,color: Colors.black),),
                        // tileColor: refreshController.colors[index],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
