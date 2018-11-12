import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../ui/homepagebody.dart';
import '../ui/settingsbody.dart';


class quizregister extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return new quizregisterState();
    }
}
class quizregisterState extends State<quizregister>{
  int currentTab = 0;
  Widget currentPage;
  Home home;
  Settings settings;
  List<Widget> pages;
  @override
    void initState() {
      home = Home();
      settings = Settings();
      pages = [home, settings];
      currentTab=0;
      currentPage=home;
      super.initState();
    }
  @override
    Widget build(BuildContext context) {
      SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculazzi"),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          onTap: (int index) {
            setState(() {
              currentTab = index;
              currentPage = pages[index];
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Account"),
            ),
          ]),
      );
    }
}