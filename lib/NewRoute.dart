import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //省略无关代码
              TextButton(
                child: Text("open new route"),
                onPressed: () {
                  //导航到新路由
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return NewRoute();
                    }),
                  );
                },
              ),
              TextButton(
                child: Text("open new route"),
                onPressed: () {
                  //导航到新路由
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return NewRoute();
                    }),
                  );
                },
              ),
            ],
          )
      ),
    );
  }
}