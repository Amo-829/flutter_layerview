
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Mine.dart';
import 'home.dart';
import 'layers.dart';
import 'view.dart';

class Lvshi extends StatefulWidget{

  @override
  _LvshiState createState() {
    return _LvshiState();
  }
}

class _LvshiState extends State<Lvshi> {

  final defaultColor = Colors.grey;
  final activeColor = Colors.purple;

  int _currentIndex = 0;

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          Home(),
          Layers(),
          View(),
          Mine(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: defaultColor,),
            activeIcon: Icon(Icons.home, color: activeColor,),
            title: Text('Home', style: TextStyle(
                color: _currentIndex != 0 ? defaultColor : activeColor),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account, color: defaultColor,),
            activeIcon: Icon(Icons.supervisor_account, color: activeColor,),
            title: Text('layers', style: TextStyle(
                color: _currentIndex != 1 ? defaultColor : activeColor),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail, color: defaultColor,),
            activeIcon: Icon(Icons.contact_mail, color: activeColor,),
            title: Text('view', style: TextStyle(
                color: _currentIndex != 2 ? defaultColor : activeColor),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box, color: defaultColor,),
            activeIcon: Icon(Icons.account_box, color: activeColor,),
            title: Text('Mine', style: TextStyle(
                color: _currentIndex != 3 ? defaultColor : activeColor),),
          ),
        ],
      ),
    );
  }
}
