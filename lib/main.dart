import 'package:flutter/material.dart';
import 'package:parking_list/another_page.dart';
import 'package:parking_list/model.dart';

// 객체로 만들어서 데이터들이 오름차순으로 정렬될 수 있도록 만든다.

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

  static List<String> parkinglotList = [
    '1st Parkinglot',
    '2nd Parkinglot',
    '3rd Parkinglot',
    '4th Parkinglot',
    '5th Parkinglot',
    '6th Parkinglot',
    '7th Parkinglot',
  ];

  static List<String> parkinglotDistance = [
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
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text('가장 가까운 주차장',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: parkinglotList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnotherPage()));
                debugPrint(parkinglotList[index]);
              },
              child: Card(
                child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Text(
                    parkinglotList[index],
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Text(
                    parkinglotDistance[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent,
                    ),
                  ),
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.local_parking_rounded,
                      color: Colors.lightBlue,
                      size: 50,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }

