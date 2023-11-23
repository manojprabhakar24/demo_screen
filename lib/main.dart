import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  List<PageViewModel> getPages(){
    return [
      PageViewModel(
        image: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMQxHTXtLjJpN8CxKq-536l4P65nzSr3ugZhRz_vITa4uUNVvFQUi5nZ_45_bKAj2AqSA&usqp=CAU"),
        title: "Welcome to our salon",
        body: "Experience the luxury services with our professional team",
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30.0),
            bodyTextStyle: TextStyle( fontSize: 15.0),
            bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            pageColor: Colors.white,
            imagePadding: EdgeInsets.zero,
          ),
      ),
      PageViewModel(
        image: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY5YU-FBCA_mop7NPH8C2HYmtKfbDxMr0HyQ&usqp=CAU"),
        title: "Styling",
        body: "Great hair doesn't happen by chance,it happens by appointment",
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30.0),
          bodyTextStyle: TextStyle( fontSize: 15.0),
          bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          pageColor: Colors.white,
          imagePadding: EdgeInsets.zero,
        ),
      ),
      PageViewModel(
        image: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7ktZ3_nIQoRpK7E7BgYENF9veREFdbrtg_w&usqp=CAU",
            ),
        title: "Hair extensions",
        body: "Life is more beautiful when you meet the right hairdresser",
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30.0),
          bodyTextStyle: TextStyle( fontSize: 15.0),
          bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          pageColor: Colors.white,
          imagePadding: EdgeInsets.zero,
        ),
      ),


    ];
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:IntroductionScreen(
          pages: getPages(),
          showSkipButton: true,
          skip: const Text("Skip"),
          next: const Text("Next"),
          done: const Text("Get Started"),
          onDone: () {},
          baseBtnStyle: TextButton.styleFrom(
            backgroundColor: Colors.white70
          ),
          skipStyle: TextButton.styleFrom(foregroundColor: Colors.blueAccent),
          doneStyle: TextButton.styleFrom(foregroundColor: Colors.green),
          nextStyle: TextButton.styleFrom(foregroundColor: Colors.redAccent),
        )
      ),
    );
  }
  
}

