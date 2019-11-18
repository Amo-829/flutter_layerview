import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() {
    return _ChatState();
  }
}

class _ChatState extends State<Chat> {
  final List<ChatMessage> _messages =
      <ChatMessage>[]; //存放聊天记录的数组，数组类型为无状态控件ChatMessage
  final TextEditingController _textEditingController =
      new TextEditingController();
  bool _isSections = false;

  void _handleSubmitted(String text) {
    _textEditingController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message,size: 35.0,),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.add,size: 35.0,),
            onPressed: (){},
          ),
        ],
        title: Text(
          '聊天对象',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          new Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true, //reverse使ListView从屏幕底部开始
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length, //itemCount指定列表中的消息数
            ),
          ),
          new Divider(
            height: 10.0,
          ),
          new Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          new Flexible(
            child: TextField(
              maxLines: 1,
              controller: _textEditingController,
              onChanged: (String text) {
                setState(() {
                  _isSections = text.length > 0; //文本输入框中的字符串长度大于0则允许发送消息
                });
              },
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0))),
            ),
          ),
          new Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              icon: Icon(Icons.add,size: 45.0,),
              padding: EdgeInsets.only(top: 2.0),
              onPressed: _isSections
                  ? () => _handleSubmitted(_textEditingController.text)
                  : null, //当没有为onPressed绑定处理函数时，IconButton默认为禁用状态
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end, //消息在右边
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                child: Row(
                  children: <Widget>[
                    new Container(
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ), //消息内容
                      width: 300.0,
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0, //头像与信息的距离
          ),
          new Container(
            child: ClipOval(
              child: new Image.asset(
                'psd/1.jpg',
                width: 40.0,
                height: 40.0,
              ),
            ), //显示头像
          ),
        ],
      ),
    );
  }
}
