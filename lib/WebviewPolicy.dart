import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewPolicy extends StatelessWidget {

  const webviewPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: WebView(
      initialUrl:"https://termify.io/privacy-policy-generator?gclid=CjwKCAjwq5-WBhB7EiwAl-HEkh4b3uSoj7l47c7Zw45CH62lgd-iAS0yVSwI7J5tCv5i5jOv5ziNaxoCNuoQAvD_BwE",
      javascriptMode:JavascriptMode.unrestricted),
    );
  }
}