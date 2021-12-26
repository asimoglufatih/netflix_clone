import 'package:flutter/material.dart';
import 'package:netflix_clone/home.dart';
import 'package:netflix_clone/home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home: const BottomBar(),
    );
  }
}


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {



  int chosenIndex = 1;

  var pageList = [Home2(),Home2(),HomePage(),HomePage(),HomePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        elevation: 0,
        flexibleSpace:
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 50,height: 50,child: Image.asset("lib/assets/netflix.png")),
                TextButton(onPressed: (){}, child: Text("Diziler",style: TextStyle(color: Colors.white),)),
                TextButton(onPressed: (){}, child: Text("Filmler",style: TextStyle(color: Colors.white))),
                TextButton(onPressed: (){}, child: Text("Listem",style: TextStyle(color: Colors.white))),
              ],
            ),
          )

      ),
      body: pageList[chosenIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Ana Sayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Ara"),
          BottomNavigationBarItem(icon: Icon(Icons.smart_display_outlined),label: "Çok Yakında"),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: "İndirilenler"),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "Daha Fazla"),
        ],
        currentIndex: chosenIndex,
        onTap: (index){
          setState(() {
            chosenIndex = index;
          });
        },
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xff999999),
        selectedItemColor: Colors.white,
      ),
    );
  }
}


