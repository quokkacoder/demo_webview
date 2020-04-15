import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'loading_widget.dart';

class HomePage extends StatelessWidget {
  final _url = 'http://hn.bep365.vn/login.php';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
          url: _url,
          withZoom: true,
          withLocalStorage: true,
          hidden: true,
          initialChild: Container(
            color: Colors.white,
            child: LoadingWidget(),
          )),
    );
  }
}
