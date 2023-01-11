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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                height: appSize.height / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 218, 100, 192)),
              ),
              Container(
                  color: Color.fromARGB(255, 119, 90, 159),
                  width: appSize.width,
                  height: appSize.height / 2,
                  child: Container(
                    child: Image.asset('assets/nike.jpg',
                        height: 1, width: double.infinity),
                  )),
            ],
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
