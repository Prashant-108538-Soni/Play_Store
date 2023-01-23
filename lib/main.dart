import 'package:flutter/material.dart';
import 'package:play_store/poster.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
final String title="";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const DefaultTabController(
        length: 2,
        child:  MyHomePage(title: 'Play Store',
      )
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        bottom: const TabBar(tabs:[
          Tab(icon: Icon(Icons.slow_motion_video_outlined),text: "Movies",),
          Tab(icon: Icon(Icons.my_library_books_sharp),text: "Books",)
        ]),

        actions:  <Widget>[
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(
                child: Text(
              "Search for apps...",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 120),
            child: Icon(Icons.mic),
          ),
          const Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding:  EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 20,
              child: Image.asset("Images/photo_2023-01-02_21-23-25 (1).jpg",fit: BoxFit.scaleDown),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(

          children: [
            const SizedBox(
              width: 900,
              height: 20,
            ),
            Center(
              child: Poster(),
            ),
            const SizedBox(
              height: 20,
              width: 900,
            ),
            Center(
              child: Poster(),
            ),
            const SizedBox(
              width: 900,
              height: 20,
            ),
            Center(
              child: Poster(),
            ),
            const SizedBox(
              width: 900,
              height: 20,
            ),
            Center(
              child: Poster(),
            ),
            const SizedBox(
              width: 900,
              height: 20,
            ),
            Center(
              child: Poster(),
            ),
            const SizedBox(
              width: 900,
              height: 20,
            ),
            Center(
              child: Poster(),
            ),
            const SizedBox(
              width: 900,
              height: 20,
            ),
            Center(
              child: Poster(),
            ),
          ],
        ),

      ),



      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.grey
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Home',
                backgroundColor: Colors.lightBlue
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Home',
              backgroundColor: Colors.greenAccent,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



}
