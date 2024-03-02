import 'dart:math';

import 'package:flutter/material.dart';
import 'package:our_team_card/ui/widget/id_card.dart';
import 'package:our_team_card/ui/widget/id_desc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentPageValue = 1;
  PageController controller =
      PageController(initialPage: 1, viewportFraction: 0.6);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> gambar = [
      "/assets/kevin.jpg",
      "/assets/kevin.jpg",
      "/assets/kevin.jpg"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "Our Team",
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: PageView.builder(
          controller: controller,
          itemCount: gambar.length,
          itemBuilder: (context, index) {
            double difference = index - currentPageValue;
            if (difference < 0) {
              difference *= -1;
            }
            difference = min(1, difference);
            return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  IDCard(
                    gambar[index],
                    scale: 1 - (difference * 0.3),
                  ),
                  IDDesc(scale: 1 - (difference * 0.3)),
                ]));
          }),
      backgroundColor: Colors.white10,
    );
  }
}
