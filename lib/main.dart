import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyList(),
    );
  }
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  var parkinglotList = [
    '1번 주차장',
    '2번 주차장',
    '3번 주차장',
    '4번 주차장',
    '5번 주차장',
    '6번 주차장',
    '7번 주차장',
  ];

  var parkinglotDistance = [
    '100m',
    '200m',
    '10m',
    '250m',
    '500m',
    '750m',
    '50m'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가장 가까운 주차장',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}

