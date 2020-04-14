import 'package:flutter/material.dart';
import 'components.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size(0.0, 400.0),
              child: rowsOfChanging(),
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
            child: changeLayoutFunction(),
          ),
        ),
      ),
    );
  }

  ///////////////////////widgets of top half of screen   /////////////////////////////////////////////////////////////////
  Column rowsOfChanging() {
    return Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Layout',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.deepOrange,
              height: 75,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(() {
                        if (indexOfLayout == 0) {
                          indexOfLayout = typeOfLayout.length - 1;
                        } else {
                          indexOfLayout--;
                        }
                      });
                    },
                  ),
                  Text(
                    typeOfLayout[indexOfLayout],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      setState(() {
                        if (indexOfLayout == typeOfLayout.length - 1) {
                          indexOfLayout = 0;
                        } else {
                          indexOfLayout++;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'mainAxisSize',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.green,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(() {
                        if (indexOfMainAxisSize == 0) {
                          indexOfMainAxisSize = typeOfMainAxisSize.length - 1;
                        } else {
                          indexOfMainAxisSize--;
                        }
                      });
                      mASFunction();
                    },
                  ),
                  Text(
                    typeOfMainAxisSize[indexOfMainAxisSize],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      setState(() {
                        if (indexOfMainAxisSize ==
                            typeOfMainAxisSize.length - 1) {
                          indexOfMainAxisSize = 0;
                        } else {
                          indexOfMainAxisSize++;
                        }
                      });
                      mASFunction();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'mainAxisAlignment',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(() {
                        if (indexOfMainAxisAlignment == 0) {
                          indexOfMainAxisAlignment =
                              typeOfMainAxisAlignment.length - 1;
                        } else {
                          indexOfMainAxisAlignment--;
                        }
                      });
                      mAAFunction();
                    },
                  ),
                  Text(
                    typeOfMainAxisAlignment[indexOfMainAxisAlignment],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      setState(() {
                        if (indexOfMainAxisAlignment ==
                            typeOfMainAxisAlignment.length - 1) {
                          indexOfMainAxisAlignment = 0;
                        } else {
                          indexOfMainAxisAlignment++;
                        }
                      });
                      mAAFunction();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'crossAxisAlignment',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.purpleAccent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(() {
                        if (indexOfCrossAxisAlignment == 0) {
                          indexOfCrossAxisAlignment =
                              typeOfCrossAxisAlignment.length - 1;
                        } else {
                          indexOfCrossAxisAlignment--;
                        }
                        cAAFunction();
                      });
                    },
                  ),
                  Text(
                    typeOfCrossAxisAlignment[indexOfCrossAxisAlignment],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      setState(() {
                        if (indexOfCrossAxisAlignment ==
                            typeOfCrossAxisAlignment.length - 1) {
                          indexOfCrossAxisAlignment = 0;
                        } else {
                          indexOfCrossAxisAlignment++;
                        }
                        cAAFunction();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              color: Colors.black,
              thickness: 10,
            ),
          ],
        ),
      ],
    );
  }
}
