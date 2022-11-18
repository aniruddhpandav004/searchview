import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:searchview/controller/homeController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());
  TextEditingController txtsearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Obx(
              () => TextField(
                controller:
                    TextEditingController(text: homeController.clickData.value),
                onChanged: (value) {
                  homeController.filterData(value);
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                    itemCount: homeController.data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          homeController.clickData.value =
                              homeController.data[index];
                          homeController.filterData(homeController.clickData.value);
                        },
                        child: ListTile(
                          title: Text("${homeController.data[index]}"),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
