import 'package:dempapp/controllers%20/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainViewWidget extends StatelessWidget {
  const MainViewWidget({super.key});

  @override
  Widget build(BuildContext context) {

DataController dataController =Get.put(DataController());

    return Obx(() => Scaffold(appBar: AppBar(),body:
    dataController.isLoading==true ?
    Center(child: CircularProgressIndicator(),):
    
    
     ListView.builder(itemBuilder: (context, index) => Container(child: Text(dataController.taskList[index].firstName??""),),),));
  }
}