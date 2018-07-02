import 'package:flutter/material.dart';
import 'package:flutter_demo/model/user.dart';
import 'package:flutter_demo/screens/home/home_screen_presenter.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> implements HomeScreenContract {

  HomeScreenPresenter _presenter;
  String _homeText;

  HomeScreenState() {
    _presenter = new HomeScreenPresenter(this);
    _presenter.getUserInfo();
  }

  @override
  Widget build(BuildContext context) {  
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home"),),
      body: new Center(
        child: new Text(_homeText),
      ),
    );
  }

  @override
  void onDisplayUserInfo(User user) {
    setState(() {
      _homeText = 'Hello ${user.username}';
    });
  }

  @override
  void onErrorUserInfo() {
    setState(() {
      _homeText = 'There was an error retrieving user info';
    });
  }

}