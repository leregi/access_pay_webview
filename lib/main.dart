import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(WebViewAccess());
}

class WebViewAccess extends StatefulWidget {
  @override
  WebViewAccessState createState() => WebViewAccessState();
}

class WebViewAccessState extends State<WebViewAccess> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://selfcare.accesshaiti.net/selfcare/login.php',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
