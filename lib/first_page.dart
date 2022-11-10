import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:retrouidesign/home_page.dart';

import 'main.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  final _title = "90s Style";
  final _subtitle1 = "90s Nostalgia Gifts";
  final _substitle2 = "& Merchandise";
  final _buttontext = "SIGN UP WITH EMAIL";
  final _appbarelevatedbuttontext = "SKIP";
  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: Text(
                _appbarelevatedbuttontext,
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Column(
        children: [
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/1.jpg',
                      height: appSize.height,
                      width: double.infinity,
                      fit: BoxFit.fill),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        _title,
                        style: ProjectStyles.TitleStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _subtitle1,
                        style: ProjectStyles.SubtitleStyle,
                      ),
                      Text(
                        _substitle2,
                        style: ProjectStyles.SubtitleStyle,
                      ),
                      SizedBox(
                        height: appSize.height - 250,
                      ),
                      Padding(
                          padding: EdgeInsets.all(1),
                          child: Container(
                            width: appSize.width * 0.8,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(_buttontext),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          side:
                                              BorderSide(color: Colors.red)))),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
