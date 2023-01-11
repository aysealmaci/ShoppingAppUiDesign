import 'package:flutter/material.dart';
import 'main.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 119, 90, 159),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
                color: Color.fromARGB(255, 119, 90, 159),
                width: appSize.width,
                height: 200,
                child: Container(
                  height: 1000,
                  child: Image.asset('assets/shoes.jpg',
                      height: 7, width: double.infinity),
                )),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 219, 227),
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Product Details",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RowWidget(
                      detail: "2020",
                      detailtitle: "Realase",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RowWidget(
                      detailtitle: "Color",
                      detail: "Purple",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RowWidget(
                      detail: "40",
                      detailtitle: "Size",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class RowWidget extends StatelessWidget {
  final String detail;

  final String detailtitle;
  const RowWidget({
    Key? key,
    required this.detail,
    required this.detailtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          detailtitle,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 168, 168, 168)),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.70),
        Text(
          detail,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
