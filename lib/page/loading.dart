import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

import '../service/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  /*
  https://jsonplaceholder.typicode.com/todos/1
  {
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
  }
   */
  // void getData() async {
  //   var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
  //   var url2 = Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Shanghai");
  //   // http request
  //   Response response = await get(url2);
  //   Map data = jsonDecode(response.body);
  //   // print(data);
  //   // print(data['title']);
  //
  //   String datetime = data['datetime'];
  //   String offset = data['utc_offset'].substring(1, 3);
  //
  //   // 创建时间对象
  //   DateTime now = DateTime.parse(datetime);
  //   now = now.add(Duration(hours: int.parse(offset)));
  //   print(now);
  // }

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(url: 'Asia/Shanghai', location: "北京", flag: "China.png");
    await instance.getData();

    //打開home頁面，傳入參數
    Navigator.pushNamed(context, "/home", arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
          child: SpinKitHourGlass(
            color: Colors.white,
            size: 70.0,
          ),
        ));
  }
}
