import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<List<String>> getPopularFilms() async{
    var popularFilmList = <String>[];

    popularFilmList.add("arcane.png");
    popularFilmList.add("dark.png");
    popularFilmList.add("dont_look_up.png");
    popularFilmList.add("house_of_cards.png");

    return popularFilmList;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
        body: FutureBuilder<List<String>>(
          future: getPopularFilms(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var filmList = snapshot.data;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filmList!.length,
                itemBuilder: (context,index){
                  var film = filmList[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 110,
                          height: 150,
                          child: Image.asset("lib/assets/${film.toString()}")),
                    ],
                  );
                },

              );
            }else{
              return Center();
            }
          },
        ),

      ),
    );
  }
}
