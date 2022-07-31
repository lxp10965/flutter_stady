import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../service/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Shanghai', location: "北京", flag: "china.png"),
    WorldTime(url: 'Europe/London', location: '伦敦', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: '雅典', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: '开罗', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: '内罗毕', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: '芝加哥', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: '纽约', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: '首尔', flag: 'south_korea.png'),
  ];

  /**
   * 生命周期
   */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("initState function ran");
    // getData();

    print("不会阻塞代码执行");
  }

  /**
   * 异步方法
   */
  // void getData() async {
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     return "米斯特吴";
  //   });
  //
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     return "米修在线";
  //   });
  //
  //   print("$username - $bio");
  // }

  void updateTime(index) async {
    //异步
    WorldTime instance = locations[index];
    await instance.getData(); //等待执行完

    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime
    });
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
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          },
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
