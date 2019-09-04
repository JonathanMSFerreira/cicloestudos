import 'package:cicloestudos/screens/NewCicloEstudo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ciclo de Estudos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Meus Estudos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add), onPressed: () {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewCicloEstudo()),
        );



      },),

      bottomNavigationBar: BottomAppBar(
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {},),
          IconButton(icon: Icon(Icons.search), onPressed: () {},),
        ],
      ),
    ),
      body:

      SingleChildScrollView(

        child:  Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[


              CicloCard(),
              CicloCard(),
              CicloCard(),
              CicloCard(),
              CicloCard(),
              CicloCard(),
              CicloCard()



            ],
          ),
        ),


      )

   // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget CicloCard(){

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album, size: 50),
            title: Text('Heart Shaker'),
            subtitle: Text('TWICE'),
          ),
        ],
      ),
    );



  }



}
