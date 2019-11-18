import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> with SingleTickerProviderStateMixin {
  final TextEditingController _textEditingController =
      new TextEditingController();
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: PreferredSize(
            child: AppBar(
              title: TextField(
                maxLines: 1,
                controller: _textEditingController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: ('全站搜索'),
                    filled: true,
                    fillColor: Colors.grey[400],
                    prefixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 25.0,
                      ),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
              bottom: TabBar(
                controller: _controller,
                tabs: <Widget>[
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Text(
                          '默认排序',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Text(
                          '全部时长',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Text(
                          '全部分类',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(100.0)),
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            new Container(
              child: First(),
            ),//默认分类页面
            new Container(
              child: Text('bcdwcd'),
            ),//全部时长页面
            new Container(
              child: Text('bcdwcew'),
            ),//全部分类页面
          ],
        ),
      ),
    );
  }
}

class First extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 0),
              scrollDirection: Axis.vertical,
              children: <Widget>[
              new  Row(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(top: 32.0,left: 25.0,),
                      child: Image.asset('psd/1.jpg',width: 130.0,height: 130.0,),
                    ),
                    SizedBox(width: 32.0,),
                    new Container(
                      padding: EdgeInsets.only(top: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text('保险律师咨询师保险法',style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w700),),
                          SizedBox(height: 13.0,),
                          new Row(
                            children: <Widget>[
                              new Icon(Icons.perm_contact_calendar,color: Colors.blue[300],),SizedBox(width: 13.0,),
                              new Text('王二律师',style: TextStyle(fontSize: 17.0),),
                            ],
                          ),
                          SizedBox(height: 16.0,),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new Icon(Icons.play_circle_outline,color: Colors.blue[300],),SizedBox(width: 5.0,),
                              new Text('1.1W',style: TextStyle(fontSize: 17.0),),SizedBox(width: 13.0,),
                              new Icon(Icons.mouse,color: Colors.blue[300],size: 17.0,),SizedBox(width: 5.0,),
                              new Text('2.2W',style: TextStyle(fontSize: 17.0),),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              SizedBox(height: 13.0,),
              new Divider(height: 10.0,color: Colors.blue,indent: 16.0,endIndent: 16.0,),
              new  Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 32.0,left: 25.0,),
                    child: Image.asset('psd/1.jpg',width: 130.0,height: 130.0,),
                  ),
                  SizedBox(width: 32.0,),
                  new Container(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('保险律师咨询师保险法',style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w700),),
                        SizedBox(height: 13.0,),
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.perm_contact_calendar,color: Colors.blue[300],),SizedBox(width: 13.0,),
                            new Text('王二律师',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        SizedBox(height: 16.0,),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Icon(Icons.play_circle_outline,color: Colors.blue[300],),SizedBox(width: 5.0,),
                            new Text('1.1W',style: TextStyle(fontSize: 17.0),),SizedBox(width: 13.0,),
                            new Icon(Icons.mouse,color: Colors.blue[300],size: 17.0,),SizedBox(width: 5.0,),
                            new Text('2.2W',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 13.0,),
              new Divider(height: 10.0,color: Colors.blue,indent: 16.0,endIndent: 16.0,),new  Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 32.0,left: 25.0,),
                    child: Image.asset('psd/1.jpg',width: 130.0,height: 130.0,),
                  ),
                  SizedBox(width: 32.0,),
                  new Container(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('保险律师咨询师保险法',style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w700),),
                        SizedBox(height: 13.0,),
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.perm_contact_calendar,color: Colors.blue[300],),SizedBox(width: 13.0,),
                            new Text('王二律师',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        SizedBox(height: 16.0,),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Icon(Icons.play_circle_outline,color: Colors.blue[300],),SizedBox(width: 5.0,),
                            new Text('1.1W',style: TextStyle(fontSize: 17.0),),SizedBox(width: 13.0,),
                            new Icon(Icons.mouse,color: Colors.blue[300],size: 17.0,),SizedBox(width: 5.0,),
                            new Text('2.2W',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 13.0,),
              new Divider(height: 10.0,color: Colors.blue,indent: 16.0,endIndent: 16.0,),new  Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 32.0,left: 25.0,),
                    child: Image.asset('psd/1.jpg',width: 130.0,height: 130.0,),
                  ),
                  SizedBox(width: 32.0,),
                  new Container(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('保险律师咨询师保险法',style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w700),),
                        SizedBox(height: 13.0,),
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.perm_contact_calendar,color: Colors.blue[300],),SizedBox(width: 13.0,),
                            new Text('王二律师',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        SizedBox(height: 16.0,),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Icon(Icons.play_circle_outline,color: Colors.blue[300],),SizedBox(width: 5.0,),
                            new Text('1.1W',style: TextStyle(fontSize: 17.0),),SizedBox(width: 13.0,),
                            new Icon(Icons.mouse,color: Colors.blue[300],size: 17.0,),SizedBox(width: 5.0,),
                            new Text('2.2W',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 13.0,),
              new Divider(height: 10.0,color: Colors.blue,indent: 16.0,endIndent: 16.0,),new  Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 32.0,left: 25.0,),
                    child: Image.asset('psd/1.jpg',width: 130.0,height: 130.0,),
                  ),
                  SizedBox(width: 32.0,),
                  new Container(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('保险律师咨询师保险法',style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w700),),
                        SizedBox(height: 13.0,),
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.perm_contact_calendar,color: Colors.blue[300],),SizedBox(width: 13.0,),
                            new Text('王二律师',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        SizedBox(height: 16.0,),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Icon(Icons.play_circle_outline,color: Colors.blue[300],),SizedBox(width: 5.0,),
                            new Text('1.1W',style: TextStyle(fontSize: 17.0),),SizedBox(width: 13.0,),
                            new Icon(Icons.mouse,color: Colors.blue[300],size: 17.0,),SizedBox(width: 5.0,),
                            new Text('2.2W',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 13.0,),
              new Divider(height: 10.0,color: Colors.blue,indent: 16.0,endIndent: 16.0,),new  Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 32.0,left: 25.0,),
                    child: Image.asset('psd/1.jpg',width: 130.0,height: 130.0,),
                  ),
                  SizedBox(width: 32.0,),
                  new Container(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('保险律师咨询师保险法',style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w700),),
                        SizedBox(height: 13.0,),
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.perm_contact_calendar,color: Colors.blue[300],),SizedBox(width: 13.0,),
                            new Text('王二律师',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        SizedBox(height: 16.0,),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Icon(Icons.play_circle_outline,color: Colors.blue[300],),SizedBox(width: 5.0,),
                            new Text('1.1W',style: TextStyle(fontSize: 17.0),),SizedBox(width: 13.0,),
                            new Icon(Icons.mouse,color: Colors.blue[300],size: 17.0,),SizedBox(width: 5.0,),
                            new Text('2.2W',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 13.0,),
              new Divider(height: 10.0,color: Colors.blue,indent: 16.0,endIndent: 16.0,),new  Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 32.0,left: 25.0,),
                    child: Image.asset('psd/屏幕快照 2019-10-23 下午1.25.01.png',width: 130.0,height: 130.0,),
                  ),
                  SizedBox(width: 32.0,),
                  new Container(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('保险律师咨询师保险法',style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.w700),),
                        SizedBox(height: 13.0,),
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.perm_contact_calendar,color: Colors.blue[300],),SizedBox(width: 13.0,),
                            new Text('王二律师',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        SizedBox(height: 16.0,),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Icon(Icons.play_circle_outline,color: Colors.blue[300],),SizedBox(width: 5.0,),
                            new Text('1.1W',style: TextStyle(fontSize: 17.0),),SizedBox(width: 13.0,),
                            new Icon(Icons.mouse,color: Colors.blue[300],size: 17.0,),SizedBox(width: 5.0,),
                            new Text('2.2W',style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 13.0,),
              new Divider(height: 10.0,color: Colors.blue,indent: 16.0,endIndent: 16.0,),
              ],
            ),

          ),

        ],
      ),
    );
  }
}
