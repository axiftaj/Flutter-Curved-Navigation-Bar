
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _selectedIndex = 0 ;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Home' , style: TextStyle(fontSize: 25 , color: Colors.black),),
    Text('Search' , style: TextStyle(fontSize: 25 , color: Colors.black),),
    Text('Add' , style: TextStyle(fontSize: 25 , color: Colors.black),),
    Text('Profile' , style: TextStyle(fontSize: 25 , color: Colors.black),),
    Text('Setting' , style: TextStyle(fontSize: 25 , color: Colors.black),),

  ];

  void _onItemSelected(int index){
    setState(() {
      _selectedIndex =  index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Curved Navigation Bar'),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 50,
            items: [
              Icon(Icons.home , size: 30,),
              Icon(Icons.search , size: 30,),
              Icon(Icons.add , size: 30,),
              Icon(Icons.person_rounded , size: 30,),
              Icon(Icons.settings , size: 30,)
            ],
            color: Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.blueAccent,
            onTap: _onItemSelected,
          ),
          body: Container(
            color: Colors.blueAccent,
            child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            )
          ),
        ),
      ),
    );
  }
}
