import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatelessWidget {
  final _url = 'http://hn.bep365.vn/login.php';
  WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
          initialUrl: _url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: ()=>_webViewController?.reload()
        ),
      ),
    );
  }
}
