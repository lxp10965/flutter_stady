import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  /**
   * 生命周期
   */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("initState function ran");
    getData();

    print("不会阻塞代码执行");
  }

  /**
   * 异步方法
   */
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "米斯特吴";
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "米修在线";
    });

    print("$username - $bio");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('选择一个国家'),
          centerTitle: true,
          elevation: 0,
        ),
        body: RaisedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('counter is $counter'),
        ));
  }

  /**
   * Widget消失或关闭时执行
   */
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose function ran");
  }
}
