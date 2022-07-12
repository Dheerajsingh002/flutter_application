import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewTerms extends StatelessWidget {

  const webviewTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms oF Services"),
      ),
      body: WebView(
      initialUrl:"https://termify.io/terms-of-service-generator?gclid=CjwKCAjwq5-WBhB7EiwAl-HEkinlpQ5Fsis4UoBdLYA2_jqc7EooF_bjxJLDRFWRYvRTYwIseZq7_hoCvIkQAvD_BwE",
      javascriptMode:JavascriptMode.unrestricted),
    );
  }
}
