import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lmszai/app/module/base_view/base_view.dart';

class RefreshPage extends StatelessWidget {
  const RefreshPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => BaseView());
            },
            child: Text("Go Again")),
      ),
    );
  }
}
