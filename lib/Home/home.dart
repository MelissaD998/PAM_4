import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pam_lab4/Controller/HomeController.dart';
import 'package:pam_lab4/Widget/advisable.dart';
import 'package:pam_lab4/Widget/article.dart';
import 'package:pam_lab4/Widget/header.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  void initState() {  //injects depedencies and it executes quick, life cycle of initState
    Get.put(HomeController());
    HomeController controller = Get.find(); // find every characteristic of aplication through json
    controller.readJsonFile();             //
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(padding: EdgeInsets.only(left: 16),
                child: Text('Featured', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20,
                  fontWeight: FontWeight.w600, fontFamily: 'Source Sans Pro',
                ),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 16),
                child: Text('See All', textAlign: TextAlign.center, style: TextStyle(color: Colors.deepOrange,
                    fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Source Sans Pro'
                ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Obx(() =>
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Container(
                  height: 262,
                  child: ListView.builder(
                      itemCount: controller.featured.length,
                      scrollDirection: Axis.horizontal,                // scroll
                      itemBuilder: (context, index) {
                        return Advisable(
                          featured: controller.featured[index],
                        );
                      }
                  ),
                ),
                Header(),
                const SizedBox(height: 16),
                Container(
                  height: 300,
                  child: ListView.separated(
                    itemCount: controller.news.length,
                    scrollDirection: Axis.vertical,                    //scroll
                    separatorBuilder: (context, index) => const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return Article(
                        news: controller.news[index],
                      );
                    },
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}




