import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dome/data/datas.dart';

class DataCardWidget extends StatelessWidget {
  final Datas data;
  final Function delete;

  const DataCardWidget(this.data, {required this.delete, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              data.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 6.0),
            Text(
              data.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
                onPressed: () {
                  delete();
                },
                label: Text('删除'),
                icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
