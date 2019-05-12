import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(title:  Text("ListView"),),
        body:  ListBodyLayout(),
      ),

    );
  }

}
class ListBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _mylistView(context);
  }
}
Widget _mylistView(BuildContext context)
{

    void  showtoast(){
      Fluttertoast.showToast(
          msg: 'Click Start',
        backgroundColor: Colors.orangeAccent,
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIos: 2,
        textColor: Colors.white,
        fontSize: 35.0,
        gravity: ToastGravity.CENTER,

      );

    }
    void showtoastforbalacnce(){
      Fluttertoast.showToast(
        msg: 'Click Start',
        backgroundColor: Colors.orangeAccent,
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIos: 2,
        textColor: Colors.white,
        fontSize: 25.0,
        gravity: ToastGravity.CENTER,

      );
    }
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/sun.png'),
          ),
          title: Text("Sun",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(

          title: Text("Star",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
          subtitle: Text("10.30 AM",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/clock.jpg'),
          ),
          trailing: Icon(Icons.keyboard_arrow_left),
          onTap: (){
            showtoast();
          },

        ),
        ListTile(

          title: Text("Balance",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
          subtitle: Text("50 Lacs",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.keyboard_arrow_right),
          onLongPress: (){
            showtoastforbalacnce();
          },

        ),
        ListTile
          (

          title: Text("Call",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
          subtitle: Text("10.30 AM",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
          //        leading: Icon(Icons.add_call),
          trailing: Icon(Icons.keyboard_arrow_down),
        )

      ],

    );



}





