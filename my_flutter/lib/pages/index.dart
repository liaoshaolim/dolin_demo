import 'package:flutter/material.dart';
import 'package:my_flutter/widgets/dl_app_bar.dart';
import 'package:my_flutter/widgets/simple_btn.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DLAppBar(
          'dolin widgets',
          isHideBackBtn: true,
          onTapBackBtn: () {
            Navigator.pop(context);
          },
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SimpleBtn(
                  title: 'dl_bubble',
                  tap: () {
                    Navigator.pushNamed(context, 'dl_bubble');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
