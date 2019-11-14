import 'package:flutter/material.dart';

import 'chat.dart';

class View extends StatefulWidget{
  _ViewState createState ()  => _ViewState();
}

class _ViewState extends State<View> with SingleTickerProviderStateMixin{
    TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller = TabController(length:2, vsync: this,);
  }
    @override
    void dispose(){
      _controller.dispose();
      super.dispose();
    }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: PreferredSize(
        child: AppBar(
          title: Text('lvshi',style: TextStyle(fontSize: 25.0),),centerTitle: true,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.amber[100],
            indicatorColor: Colors.pink,
            labelColor: Colors.yellow,
            controller: _controller,
            tabs: <Widget>[
              Tab(text: 'lawres',),
              Tab(text: 'My Questions',)
            ],
          ),
        ),
        preferredSize: Size.fromHeight(80.0),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
           new Padding(
            padding: EdgeInsets.only(top:5.0),
            child: new Container(
              child: LayersList(),
            ), //lagers页面
          ),
           new Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: new Container(
            child: Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 1.0, 25.0, 2.0),
                        child: ClipOval(
                          child: Image.asset('psd/下载.jpg',width: 40.0,height: 40.0,),
                        )
                    ),
                    new Column(
                      children: <Widget>[
                        new Text('仲以为你系笑料，估唔到揸四条',style: TextStyle(fontSize: 18.0,color: Colors.deepPurpleAccent),),
                        new Text('仲以为你系笑料，估唔到揸四条',style: TextStyle(fontSize: 18.0,color: Colors.deepPurpleAccent),),
                      ],
                    )
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 25.0, 2.0),
                        child: ClipOval(
                          child: Image.asset('psd/1.jpg',width: 40.0,height: 40.0,),
                        )
                    ),
                    new Text('有食唔食，罪大恶极',style: TextStyle(fontSize: 18.0,color: Colors.deepPurpleAccent),),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 25.0, 2.0),
                        child: ClipOval(
                          child: Image.asset('psd/u=2696155192,1621377227&fm=26&gp=.jpg',width: 40.0,height: 40.0,),
                        )
                    ),
                    new Text('痴痴呆呆坐埋一台',style: TextStyle(fontSize: 18.0,color: Colors.deepPurpleAccent),),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 25.0, 2.0),
                        child: ClipOval(
                          child: Image.asset('psd/u=2696155192,1621377227&fm=26&gp=.jpg',width: 40.0,height: 40.0,),
                        )
                    ),
                    new Text('从不喜欢孤单一个，可惜偏偏孤独一个',style: TextStyle(fontSize: 16.0,color: Colors.deepPurpleAccent),),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 1.0, 25.0, 2.0),
                        child: ClipOval(
                          child: Image.asset('psd/下载.jpg',width: 40.0,height: 40.0,),
                        )
                    ),
                    new Column(
                      children: <Widget>[
                        new Text('仲以为你系笑料，估唔到揸四条',style: TextStyle(fontSize: 18.0,color: Colors.deepPurpleAccent),),
                        new Text('仲以为你系笑料，估唔到揸四条',style: TextStyle(fontSize: 18.0,color: Colors.deepPurpleAccent),),
                      ],
                    )
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 25.0, 2.0),
                        child: ClipOval(
                          child: Image.asset('psd/1.jpg',width: 40.0,height: 40.0,),
                        )
                    ),
                    new Text('有食唔食，罪大恶极',style: TextStyle(fontSize: 18.0,color: Colors.deepPurpleAccent),),
                  ],
                ),
              ],
            ),
          ),//My questions页面
        ),
        ],
      )
    );
  }
}

class LayersList extends StatefulWidget{
  _LayersListState createState () =>_LayersListState();
}
class _LayersListState extends State<LayersList> with SingleTickerProviderStateMixin{
  TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller = TabController(length:4, vsync: this);
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.amber[100],
            indicatorColor: Colors.pink,
            labelColor: Colors.yellow,
            controller: _controller,
            tabs: <Widget>[
              new Text('minshi',style: TextStyle(fontSize: 17.0),),
              new Text('xingshi',style: TextStyle(fontSize: 17.0),),
              new Text('xingzhen',style: TextStyle(fontSize: 17.0),),
              new Text('hunyin',style: TextStyle(fontSize: 17.0),),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(30.0),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new ClipOval(
                          child: Image.asset('psd/下载 (2).jpg',width: 100.0,height: 100.0,),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Text('bqwjkduwq',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Row(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Icon(
                                  Icons.account_box,
                                  size: 10.0,
                                ),
                                new Text('执业1年',style: TextStyle(fontSize: 10.0),),
                              ],
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            new Row(
                              children: <Widget>[
                                new Container(
                                  height: 20.0,
                                  width: 60.0,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text('咨询'),
                                    color: Colors.blue,
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) => new Chat()
                                          )
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Row(
                          children: <Widget>[
                            new Text('山东  青岛 | 山东鲁能律师事务所',style: TextStyle(fontSize: 10.0),),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Row(
                          children: <Widget>[
                            Button(),
                            SizedBox(
                              width: 2.0,
                            ),
                            Button(),
                            SizedBox(
                              width: 2.0,
                            ),
                            Button(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new ClipOval(
                          child: Image.asset('psd/下载 (2).jpg',width: 100.0,height: 100.0,),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Text('bqwjkduwq',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Row(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Icon(
                                  Icons.account_box,
                                  size: 10.0,
                                ),
                                new Text('执业1年',style: TextStyle(fontSize: 10.0),),
                              ],
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            new Row(
                              children: <Widget>[
                                new Container(
                                  height: 20.0,
                                  width: 60.0,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text('咨询'),
                                    color: Colors.blue,
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) => new Chat()
                                          )
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Row(
                          children: <Widget>[
                            new Text('山东  青岛 | 山东鲁能律师事务所',style: TextStyle(fontSize: 10.0),),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Row(
                          children: <Widget>[
                            Button(),
                            SizedBox(
                              width: 2.0,
                            ),
                            Button(),
                            SizedBox(
                              width: 2.0,
                            ),
                            Button(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),//第一个页面minshi
          new Container(),//第二个页面xingshi
          new Container(),//第三个页面xingzhen
          new Container(),//第四个页面hunyin
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 60.0,
      child: OutlineButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: Text(
          "婚姻家事",
          style: TextStyle(fontSize: 7.0,fontWeight: FontWeight.bold),
        ),
        textColor: Colors.grey,
        onPressed: () {},
      ),
    );
  }
}



