import 'package:flutter/material.dart';

class Gundem extends StatefulWidget {
  const Gundem({Key? key}) : super(key: key);

  @override
  _GundemState createState() => _GundemState();
}

class _GundemState extends State<Gundem> {


  Future<List<String>> getPopularFilms() async{
    var popularFilmList = <String>[];

    popularFilmList.add("irishman.png");
    popularFilmList.add("lucifer.png");
    popularFilmList.add("peaky_blinders.png");
    popularFilmList.add("red_notice.png");

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
