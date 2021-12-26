import 'package:flutter/material.dart';

class WatchAgain extends StatefulWidget {
  const WatchAgain({Key? key}) : super(key: key);

  @override
  _WatchAgainState createState() => _WatchAgainState();
}

class _WatchAgainState extends State<WatchAgain> {

  Future<List<String>> getPopularFilms() async{
    var popularFilmList = <String>[];

    popularFilmList.add("stranger.png");
    popularFilmList.add("the_crown.png");
    popularFilmList.add("witcher.png");
    popularFilmList.add("you.png");

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
