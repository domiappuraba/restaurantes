import 'dart:async';
import 'package:domiapp/src/navigation_controls.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'src/web_view_stack.dart';

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  final controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 56),
        child: Visibility(
          visible: true,
          child: AppBar(
            title: const Text('Domi APP Uraba'),
            backgroundColor: Colors.red,
            actions: [NavigationControls(controller: controller)],
          ),
        ),
      ),
      body: WebViewStack(controller: controller),
    );
  }
}
