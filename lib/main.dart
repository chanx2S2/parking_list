import 'package:flutter/material.dart';
import 'package:parking_list/another_page.dart';
import 'package:parking_list/model.dart';

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
    '1번 주차장',
    '2번 주차장',
    '3번 주차장',
    '4번 주차장',
    '5번 주차장',
    '6번 주차장',
    '7번 주차장',
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
                // child: Row(
                //   children: [
                //     const SizedBox(
                //       width: 100,
                //       height: 100,
                //     ),
                //     Padding(padding: const EdgeInsets.all(10),
                //       child: Column(
                //         children: [
                //           Text(parkinglotList[index],
                //             style: const TextStyle(
                //               fontSize: 30,
                //               fontWeight: FontWeight.bold,
                //               color: Colors.black,
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 10,
                //           ),
                //           SizedBox(
                //             width: width,
                //             child: Text(
                //               parkinglotDistance[index],
                //               style: const TextStyle(
                //                 fontSize: 20,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.amberAccent
                //               ),
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ),
            );
          },
        ),
      );
    }
  }

