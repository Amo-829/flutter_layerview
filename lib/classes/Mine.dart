import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Mine extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mine'),centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 25.0, 2.0),
                        child: ClipOval(
                          child: Image.asset('psd/1.jpg',width: 80.0,height: 80.0,),
                        )
                    ),
                    new Text('wguiguiwdu')
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 30.0,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: GridView.count(
                crossAxisCount: 3,
                children: <Widget>[
                  new ListTile(
                    title:new Text('dingdan',style: TextStyle(fontSize: 25.0),textAlign: TextAlign.center,),
                  ),
                  new ListTile(
                    title: new Text('tiwen',style: TextStyle(fontSize: 25.0),textAlign: TextAlign.center,),
                  ),
                  new ListTile(
                    title: new Text('tiwen',style: TextStyle(fontSize: 25.0),textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0,0),
              child: ListView(
                children: <Widget>[
                  new ListTile(
                    leading: new CircleAvatar(
                      backgroundImage: AssetImage('psd/下载 (2).jpg'),
                    ),
                    title: Text('wodetiwen',style: TextStyle(fontSize: 25.0),),
                    subtitle: Text('jdkveuhveo'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    dense: true,
                    onTap: (){
                      //do something
                    },
                    onLongPress: (){
                      //do something else
                    },
                  ),
                  new ListTile(
                    leading: new CircleAvatar(
                      backgroundImage: AssetImage('psd/下载 (2).jpg'),
                    ),
                    title: Text('wodetiwen',style: TextStyle(fontSize: 25.0),),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      //do something
                    },
                    onLongPress: (){
                      //do something else
                    },
                  ),
                  new ListTile(
                    leading: new CircleAvatar(
                      backgroundImage: AssetImage('psd/下载 (2).jpg'),
                    ),
                    title: Text('wodetiwen',style: TextStyle(fontSize: 25.0),),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      //do something
                    },
                    onLongPress: (){
                      //do something else
                    },
                  ),
                  new ListTile(
                    leading: new CircleAvatar(
                      backgroundImage: AssetImage('psd/下载 (2).jpg'),
                    ),
                    title: Text('wodetiwen',style: TextStyle(fontSize: 25.0),),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      //do something
                    },
                    onLongPress: (){
                      //do something else
                    },
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}


