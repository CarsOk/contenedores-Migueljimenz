
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,),
      home: Scaffold(
        appBar: AppBar(title: Text("SENA",
        style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),),
        drawer: MenuLateral(),
        body: Center(
          child:(
            Column(children: [
              Image(
                image: NetworkImage('https://bogota.gov.co/sites/default/files/styles/1050px/public/field/image/9010.jpg'),
              ),
              SizedBox(height: 20.0,),
              Text('Barranquilla-Atlantico',
                style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),),
                SizedBox(height: 20.0,),
                Text('2021',
                  style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800,fontStyle: FontStyle.italic),),
                SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget> [
                      Icon(
                          Icons.exit_to_app,
                          size: 35.0,
                          semanticLabel: 'Salir',
                        ),
                    ],
                  ),
          ],)),
        ),
      )
    );
  }
}
class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text('anonymus'),
            accountEmail: Text('migueljiarteta@gmail.com'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://media.gq.com.mx/photos/5ed7a176e30eef01aa919d66/master/pass/ANONYMOUS.jpg'),
                fit: BoxFit.fill
              )
            ),
          ), 
          Ink(
            color: Colors.white,
            child: ListTile(title: Text('configuracion',
            style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontSize: 30.0),)),

          ), 
        ]
      ),
    );
  }
}
