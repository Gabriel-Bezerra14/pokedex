import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [

          ListTile(
            title: Text("Charmander"),
            textColor: Colors.red,
            leading: Icon(Icons.contact_mail_sharp),

          ),

          ListTile(
            title: Text("Squarde"),
              textColor: Colors.blueAccent,

          ),

          ListTile(
            title: Text("Bumbasar"),
              textColor: Colors.green,

          ),






        ],
        ),
      ),
    );
  }
}
