import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pokemons = [
    ["Charmander", Colors.redAccent],
    ["Squirtle", Colors.blue],
    ["Bulbasaur", Colors.green]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Image.asset("pokedex.png")),
            SizedBox(
              width: 10,
            ),
            Flexible(
                child: Text(
              "Pokedex",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ],
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: ListView.builder(
                      itemCount: pokemons.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child:  ListTile(

                            dense: true,
                            title: Text(
                              pokemons[index][0],
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 2.0,
                                    color: Colors.black26,
                                    offset: Offset(5.0, 5.0),
                                  ),
                                ],
                              ),
                            ),
                            textColor: pokemons[index][1],
                            leading: Image.asset('pokebola.png'),
                          ),
                        );
                      }),
                ))
          ],
        ),
      )),
    );
  }
}
