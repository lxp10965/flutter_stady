import 'package:flutter/material.dart';

class PersonalCard extends StatefulWidget{
  @override
  State<PersonalCard> createState() => _PersonalCardState();
}

class _PersonalCardState extends State<PersonalCard> {
  int level =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text("市民Y"),
        backgroundColor: Colors.grey[900],
      ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         setState((){
           level += 1;
         });
       },
       backgroundColor: Colors.grey[800],
       child: Icon(Icons.add),
     ),
     body: Padding(
       padding: const EdgeInsets.all(30.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/image1.jpg'),
              radius: 40.0,
            ),
          ),

           Divider(
             height: 60.0,
             color: Colors.grey[800],
           ),
           Text("姓名",
             style: TextStyle(
             color: Colors.grey,
             letterSpacing: 2.0,
           )),
           SizedBox(height: 10.0),
           Text("使命使命召唤",style: TextStyle(
             color: Colors.amberAccent[200],
             fontWeight: FontWeight.bold,
             fontSize: 28.0
           ),),
           SizedBox(height: 30.0),
           Text("公司",
               style: TextStyle(
               color: Colors.grey,
               letterSpacing: 2.0,
               )),
           SizedBox(height:10.0),
           Text("阿里巴巴",style: TextStyle(
               color: Colors.amberAccent[200],
               fontWeight: FontWeight.bold,
               fontSize: 28.0
           ),),
           SizedBox(height: 30.0),
           Text("职位",
               style: TextStyle(
               color: Colors.grey,
               letterSpacing: 2.0,
               )),
           SizedBox(height: 10.0),
           Text("Node.js",style: TextStyle(
               color: Colors.amberAccent[200],
               fontWeight: FontWeight.bold,
               fontSize: 28.0
           ),),
           SizedBox(height: 30.0),
           Text("登级",
               style: TextStyle(
               color: Colors.grey,
               letterSpacing: 2.0,
               )),
           SizedBox(height: 10.0),
           Text("$level",style: TextStyle(
               color: Colors.amberAccent[200],
               fontWeight: FontWeight.bold,
               fontSize: 28.0
           ),),
           SizedBox(height: 30.0),
           Row(
             children: <Widget>[
               Icon(
                   Icons.email,
                   color:Colors.grey[400]
               ),
               SizedBox(width: 10.0),
               Text('wuhaiyang@alibaba-inc.com',style: TextStyle(
                   color: Colors.grey[400],
                   fontSize: 18.0,
                   letterSpacing: 1.0
               ))
             ],
           ),
         ],
       ),
     ),
    );
  }
}