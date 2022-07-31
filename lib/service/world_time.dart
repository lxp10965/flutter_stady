import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime {
  String location = "";
  String time = "";
  String flag = "";
  String url = "";
  bool isDaytime = false;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getData() async {
    var url1 = Uri.parse("http://worldtimeapi.org/api/timezone/$url");
    try {
      // http request
      Response response = await get(url1);
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // 创建时间对象
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = now.hour > 6 && now.hour < 12 ? true : false;

      time = DateFormat.jm().format(now);
    } catch (e) {
      print(e);
      time = "could not get time";
    }
  }
}
