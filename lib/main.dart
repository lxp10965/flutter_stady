import 'package:flutter/material.dart';
import 'package:flutter_dome/ListViewDome.dart';
import 'package:flutter_dome/PersonalCard.dart';

import 'NewRoute.dart';
import 'TipRoute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        // home: RouterTestRoute(),
        //   home: TextWidget()
        // home: ImageWidget()
        // home: ButtonWidget());
        // home: ContainerWidget());
        // home: RowAndColumWidget());
        // home: FlexWidget());
        // home: PersonalCard());
        home: ListViewDome());
  }
}

//弹性小部件
class FlexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('assets/image1.jpg'),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text('3'),
            ),
          ),
        ],
      ),
    );
  }
}

class RowAndColumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("row"),
        backgroundColor: Colors.black12,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Container(
          //       child: Text(
          //         "one",
          //       ),
          //       padding: EdgeInsets.all(20.0),
          //       color: Colors.red,
          //     ),
          //     Container(
          //       child: Text(
          //         "two",
          //       ),
          //       padding: EdgeInsets.all(20.0),
          //       color: Colors.green,
          //     ),
          //     Container(
          //       child: Text(
          //         "three",
          //       ),
          //       padding: EdgeInsets.all(20.0),
          //       color: Colors.blue,
          //     )
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text("Hello 米斯特吴"),
          //     FlatButton(
          //       onPressed: () {},
          //       color: Colors.amber,
          //       child: Text("按钮"),
          //     ),
          //     Container(
          //       color: Colors.cyan,
          //       padding: EdgeInsets.all(30.0),
          //       child: Text("这是container"),
          //     )
          //   ],
          // ),
          Row(
            children: <Widget>[Text("Hello "), Text(" World")],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: Text('one'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.red,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.green,
            child: Text('three'),
          )
        ],
      ),
    );
  }
}

/**
 * 两种容器的使用
 */
class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerWidget"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.9),
        child: Text("Padding"),

        // Container(
        //   child: Text("Hello Flutter"),
        //  color: Colors.grey[400],  //背景色跟随内容
//        margin: EdgeInsets.all(50.0),
//        padding: EdgeInsets.symmetric(vertical:30.0,horizontal: 30.0),
////        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
////        padding: EdgeInsets.all(90.0),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("市民Y"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          IconButton(
            icon: Icon(Icons.add_call),
            onPressed: () {
              print("ShimingY");
            },
          ),
          RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.mail),
            label: Text("mail me"),
            color: Colors.red,
          ),
          RaisedButton(
            onPressed: () {
              print("321茄子");
            },
            child: Text("拍照"),
            color: Colors.red,
          ),
          Icon(
            Icons.add_a_photo,
            color: Colors.red,
            size: 100.0,
          ),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("米斯特吴"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        // child: Image.asset("assets/image1.jpg"),
        child: Image.network(
            "https://images.pexels.com/photos/2658457/pexels-photo-2658457.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        // child: Image(
        // // image:NetworkImage("https://images.pexels.com/photos/3178881/pexels-photo-3178881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
        // image: AssetImage("assets/image3.jpg"),
        // )
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("米斯特吴"),
        // centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          "Hello Flutter",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: "IndieFlower"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[600],
        onPressed: () {},
        child: Text("按钮"),
      ),
    );
  }
}
