import 'package:flutter/material.dart';

///////////////////////////////// to change layout  /////////////////////////////////
List<String> typeOfLayout = [
  'Row',
  'column',
];
int indexOfLayout = 0;

///////////////////////////////// to change MainAxisAlignment  /////////////////////////////////
List<String> typeOfMainAxisAlignment = [
  'start',
  'center',
  'end',
  'spaceBetween',
  'spaceAround',
  'spaceEvenly',
];
int indexOfMainAxisAlignment = 0;

///////////////////////////////// to change MainAxisSize  /////////////////////////////////
List<String> typeOfMainAxisSize = [
  'min',
  'max',
];
int indexOfMainAxisSize = 0;

///////////////////////////////// to change CrossAxisAlignment  /////////////////////////////////
List<String> typeOfCrossAxisAlignment = [
  'start',
  'center',
  'end',
  'stretch',
];
int indexOfCrossAxisAlignment = 0;

/////////////////////////////////  change layout   /////////////////////////////////
Widget changeLayoutFunction() {
  if (indexOfLayout == 0) {
    return rowFunction();
  } else {
    return columnFunction();
  }
}

/////////////////////////////////  change mainAxisSize   /////////////////////////////////
var mAS = MainAxisSize.min;
void mASFunction() {
  if (typeOfMainAxisSize[indexOfMainAxisSize] == 'min') {
    mAS = MainAxisSize.min;
  } else if (typeOfMainAxisSize[indexOfMainAxisSize] == 'max') {
    mAS = MainAxisSize.max;
  }
}

/////////////////////////////////  change CrossAxisAlignment   /////////////////////////////////
var mAA = MainAxisAlignment.start;
void mAAFunction() {
  if (typeOfMainAxisAlignment[indexOfMainAxisAlignment] == 'start') {
    mAA = MainAxisAlignment.start;
  } else if (typeOfMainAxisAlignment[indexOfMainAxisAlignment] == 'center') {
    mAA = MainAxisAlignment.center;
  } else if (typeOfMainAxisAlignment[indexOfMainAxisAlignment] == 'end') {
    mAA = MainAxisAlignment.end;
  } else if (typeOfMainAxisAlignment[indexOfMainAxisAlignment] ==
      'spaceBetween') {
    mAA = MainAxisAlignment.spaceBetween;
  } else if (typeOfMainAxisAlignment[indexOfMainAxisAlignment] ==
      'spaceAround') {
    mAA = MainAxisAlignment.spaceAround;
  } else if (typeOfMainAxisAlignment[indexOfMainAxisAlignment] ==
      'spaceEvenly') {
    mAA = MainAxisAlignment.spaceEvenly;
  }
}

/////////////////////////////////  change CrossAxisAlignment   /////////////////////////////////
var cAA = CrossAxisAlignment.start;
void cAAFunction() {
  if (typeOfCrossAxisAlignment[indexOfCrossAxisAlignment] == 'start') {
    cAA = CrossAxisAlignment.start;
  } else if (typeOfCrossAxisAlignment[indexOfCrossAxisAlignment] == 'end') {
    cAA = CrossAxisAlignment.end;
  } else if (typeOfCrossAxisAlignment[indexOfCrossAxisAlignment] == 'center') {
    cAA = CrossAxisAlignment.center;
  } else if (typeOfCrossAxisAlignment[indexOfCrossAxisAlignment] == 'stretch') {
    cAA = CrossAxisAlignment.stretch;
  }
}

// widgets of bottom half when images be in column layout
//////////////////////////// Column widgets   ////////////////////////////////////////////
Widget columnFunction() {
  return Container(
    color: Colors.orangeAccent,
    child: Column(
      crossAxisAlignment: cAA,
      mainAxisSize: mAS,
      mainAxisAlignment: mAA,
      children: <Widget>[
        Container(
          color: Colors.orangeAccent,
          child: Image.asset(
            'assets/0001.png',
            height: 50,
            width: 50,
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: Image.asset(
            'assets/0006.png',
            height: 100,
            width: 100,
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: Image.asset(
            'assets/0003.png',
            height: 50,
            width: 50,
          ),
        ),
      ],
    ),
  );
//
}

// widgets of bottom half when images be in Row layout
//////////////////////////// Row widgets   ////////////////////////////////////////////
Widget rowFunction() {
  return Container(
    color: Colors.orangeAccent,
    child: Row(
      crossAxisAlignment: cAA,
      mainAxisSize: mAS,
      mainAxisAlignment: mAA,
      children: <Widget>[
        Container(
          color: Colors.orangeAccent,
          child: Image.asset(
            'assets/0001.png',
            height: 50,
            width: 50,
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: Image.asset(
            'assets/0006.png',
            height: 100,
            width: 100,
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: Image.asset(
            'assets/0003.png',
            height: 50,
            width: 50,
          ),
        ),
      ],
    ),
  );
}
