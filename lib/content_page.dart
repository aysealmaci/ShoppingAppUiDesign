import 'package:flutter/material.dart';
import 'main.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                  color: Color.fromARGB(97, 180, 93, 93),
                  width: appSize.width,
                  height: appSize.height,
                  child: Container(
                    height: 100,
                    child: Image.asset('assets/5.jpg',
                        height: 1, width: double.infinity),
                  )),
              Container(
                height: appSize.height * 0.45,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 219, 227),
                    borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
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
              Container(
                width: appSize.width,
                height: appSize.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
              ),
            ],
          )
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
