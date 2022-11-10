import 'package:flutter/material.dart';
import 'package:retrouidesign/content_page.dart';
import 'package:retrouidesign/first_page.dart';

import 'main.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  final _title = "Catalog";
  final top_text1 = "Sort";
  final top_text2 = "Filters";
  final _container_data1 = "Clothes";
  final _container_data2 = "Audio Cassettes";
  final _container_data3 = "Memes";
  final _container_data4 = "Games";
  final _container_data5 = "Shoes";
  final _container_data6 = "Music";

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/2.png"), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    _title,
                    style: ProjectStyles.TitleStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 100,
                      width: appSize.width * 0.9,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 44, 12, 119),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.all(35),
                        child: Row(
                          children: [
                            Text(
                              top_text1,
                              style: ProjectStyles.SubtitleStyle,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.sort),
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              top_text2,
                              style: ProjectStyles.SubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ContentContainer(
                        appSize: appSize,
                        container_data: _container_data1,
                        container_color: Color.fromARGB(255, 255, 208, 224),
                        container_height: 270,
                        container_width: 160,
                        container_text_color: Colors.pink,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ContentContainer(
                        appSize: appSize,
                        container_data: _container_data2,
                        container_color: Color.fromARGB(255, 30, 191, 255),
                        container_height: 140,
                        container_width: 160,
                        container_text_color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ContentContainer(
                        appSize: appSize,
                        container_data: _container_data3,
                        container_color: Color.fromRGBO(214, 237, 255, 1),
                        container_height: 270,
                        container_width: 160,
                        container_text_color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ContentContainer(
                        appSize: appSize,
                        container_data: _container_data4,
                        container_color: Color.fromARGB(255, 133, 44, 228),
                        container_height: 225,
                        container_width: 160,
                        container_text_color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ContentContainer(
                        appSize: appSize,
                        container_data: _container_data5,
                        container_color: Color.fromARGB(255, 223, 194, 255),
                        container_height: 225,
                        container_width: 160,
                        container_text_color: Colors.purple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ContentContainer(
                        appSize: appSize,
                        container_data: _container_data6,
                        container_color: Color.fromARGB(255, 49, 22, 119),
                        container_height: 225,
                        container_width: 160,
                        container_text_color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContentPage()));
                },
                child: Text(
                  "next page",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    Key? key,
    required this.appSize,
    required this.container_data,
    required this.container_color,
    required this.container_height,
    required this.container_width,
    required this.container_text_color,
  }) : super(key: key);

  final Size appSize;
  final String container_data;
  final Color container_color;
  final double container_height;
  final double container_width;
  final Color container_text_color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: container_height,
      width: container_width,
      decoration: BoxDecoration(
        color: container_color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                container_data,
                style: TextStyle(color: container_text_color),
              ),
              Text("subtext")
            ],
          )),
    );
  }
}
