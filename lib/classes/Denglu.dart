import 'package:flutter/material.dart';

import 'network_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Denglu extends StatefulWidget{
  @override
  _DengluState createState() {
    return _DengluState();
  }
}

class _DengluState extends State<Denglu>{

  String phone;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('psd/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(left: 10.0,top: 40.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: GestureDetector(
                    child: Icon(Icons.arrow_left),
                    onTap:(){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              new Center(
                child: Column(
                  children: <Widget>[
                    new Text('登陆',
                      style: TextStyle(fontSize: 25.0,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    new ClipOval(
                      child: Image.asset('psd/下载 (2).jpg',width: 100.0,height: 100.0,fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(left: 60.0,top: 53.0,right: 60.0),
                child: new TextField(
                  decoration: new InputDecoration(
                    contentPadding: EdgeInsets.all(1.0),
                    labelText: '输入手机号',
                  ),
                  onChanged: (value){
                    print(value);
                    setState(() {
                       phone = value;
                    });
                  },
                ),
              ),
              new Container(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                width: double.infinity,
                child: new TextFormField(
                  decoration: InputDecoration(
                    labelText: '验证码',
                  ),
                  onSaved:(value){
                    setState(() {
                      password = value;
                    });
                  },
                  validator: (value){
                    return 'right';
                  },
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              new Container(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                width: double.infinity,
                child: RawMaterialButton(
                  onPressed: () async {
                    print('phone-->$phone,password-->$password');
                    NetworkHelper networkHelper = new NetworkHelper(
                        'http://112.74.200.88:21809/login?username=$phone&password=$password'
                    );
                    var result = await networkHelper.getData();//对象.方法 getData异向
                    print('result---->');
                    print(result.toString());

                    ///存储result
                    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                    sharedPreferences.setString('token', result);

                    print('从SP中获取token---》');
                    print(sharedPreferences.getString('token'));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.blue,
                  child: Text('登陆',style: TextStyle(fontSize: 22.0,color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}