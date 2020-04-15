import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatelessWidget {

  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: "https://www.youtube.com/?hl=pt&gl=BR",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            }
        )
    );
  }
}