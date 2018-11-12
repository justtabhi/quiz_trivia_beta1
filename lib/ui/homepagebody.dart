import 'package:flutter/material.dart';
const subtitle="Just need to simplify mathematical \nequations to earn exciting prizes \n1.quiz consist of 10 questions \n2.Time allowed is 10 sec for each question";
class Home extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return new HomeState();
    }
}
class HomeState extends State<Home>{
  @override
  
    Widget build(BuildContext context) {
      return new Card(
        color: Colors.pinkAccent,
      child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const ListTile(
        leading: Icon(Icons.album),
        title: Text('Simplify and Earn',style: TextStyle(
                  color: Colors.white),),
        subtitle: Text(subtitle,style: TextStyle(color: Colors.white),)
      ),
      ButtonTheme.bar( // make buttons use the appropriate styles for cards
        child: ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text('Register @1',style: new TextStyle(
                color: Colors.white,
              ),),
              color: Colors.deepOrangeAccent,
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  ),
);

    }
}