import 'package:flutter/material.dart';
import '../view/segbtn.dart';

void main() {
  runApp(const SegBtn());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Enter title here')
        ),
        body: Center(
          // child: Text('Hello World!'),
          child: SegBtn()
        )
        
        ),
    );
  }
}
