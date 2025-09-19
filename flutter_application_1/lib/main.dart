import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exp1 app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Application', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.lightGreen,),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
          children: [
            Text('welcome'),
            SizedBox(height: 10,),
            Icon(Icons.call),
            SizedBox(height: 10,),
            Icon(Icons.person),
            SizedBox(height: 10,),
            ElevatedButton(
               onPressed: (){}, 
               style:ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                ), 
                child: Text('Click here')
              ),
          SizedBox(height: 10,),

          TextField(
            decoration: InputDecoration(
              hintText: 'Type here...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
          ),
          SizedBox(height: 10,),
          Image.network('https://kenkoimagingusa.com/cdn/shop/articles/Simple_Landscape_Photography_Tips_With_Tons_of_Impact_79f3d1b6-addd-4420-a887-f1cc50292373.jpg' ,width:400, height: 250,),
          SizedBox(height: 10,),
          Container(
            height: 100,
            color: Colors.yellow,
          )
          ],
          ),
        )
      ),
    );
  }
}