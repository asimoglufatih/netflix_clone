import 'package:flutter/material.dart';
import 'package:netflix_clone/gundem.dart';
import 'package:netflix_clone/home.dart';
import 'package:netflix_clone/watch_again.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0,left: 8.0),
            child: Text("Netflix'te Popüler",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 155,child: HomePage()),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8.0),
            child: Text("Gündemdekiler",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 155,child: Gundem()),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8.0),
            child: Text("Yeniden İzleyin",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 155,child: WatchAgain()),
        ],
      )
    );
  }
}
