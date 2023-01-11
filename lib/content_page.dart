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
                  child: Image.asset('assets/nike.jpg',
                      height: 1, width: double.infinity),
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
                    child: RowWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RowWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RowWidget(),
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
  const RowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Realase",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 168, 168, 168)),
        ),
        SizedBox(
          width: 250,
        ),
        Text(
          "2018-08-22",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
