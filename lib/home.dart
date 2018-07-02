import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home"),
        ),
        body: _getBody());
  }

  Widget _getBody() {
    return new Center(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[new Text("Hello Flutter"), new _Body()],
      ),
    );
  }
}

class _Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        showBottomSheet(
            context: context,
            builder: (context) {
              return new Text("弹出层");
            });
      },
      child: new Text("这是一个可点击的文字"),
    );
  }
}
