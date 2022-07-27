import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/datas.dart';
import 'datas_card.dart';

class ListViewDome extends StatefulWidget {
  @override
  State<ListViewDome> createState() => _ListViewDomeState();
}

class _ListViewDomeState extends State<ListViewDome> {
  // List<String> datas = [
  //   "hello world",
  //   "hello flutter",
  //   "hello misterwu"
  // ];

  List<Datas> datas = [
    Datas(text: "hello world", author: "米斯特吴"),
    Datas(text: "hello flutter", author: "阿里巴巴"),
    Datas(text: "hello missyou", author: "米修在线"),
    Datas(text: "hello missyou", author: "米修在线"),
    Datas(text: "hello missyou", author: "米修在线"),
    Datas(text: "hello missyou", author: "米修在线"),
  ];

  Widget dataTemplate(data) {
    return DataCardWidget(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("米修在线"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Container(
          color: Colors.grey[900],
          child: Column(
              // children: datas.map((data){
              //   return Text(data);
              // }).toList()

              // children: datas.map((data) => Text(data)).toList()
              // children: datas.map((data) => Text('${data.author} : ${data.text}')).toList()
              children: datas.map((data) => dataTemplate(data)).toList()
              // children: <Widget>[
              //   Text("hello world"),
              //   Text("hello flutter"),
              //   Text("hello misterwu"),
              // ],
              ),
        ),
      ),
    );
  }
}
