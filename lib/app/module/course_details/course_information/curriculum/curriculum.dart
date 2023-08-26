import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'curriculum_controller.dart';

class Curriculam extends StatelessWidget {
  Curriculam({super.key});

  CurriculumController curriculumController = Get.put(CurriculumController());

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Obx(() => curriculumController.isLoading.value == false
        ? ListView.builder(
            itemCount:
                curriculumController.allcurriculumData.value.data!.length,
            itemBuilder: (context, index) {
              final data =
                  curriculumController.allcurriculumData.value.data![index];
              return ExpansionTile(
                title: Text(data.name.toString()),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: SizedBox(
                      width: screenWidth,
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_circle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(data.lectures![index].title.toString()),
                          Spacer(),
                          Icon(
                            Icons.lock_open,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(data.lectures![index].fileDuration.toString()),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        : CircularProgressIndicator());
  }
}
