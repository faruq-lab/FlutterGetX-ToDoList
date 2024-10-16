// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import '../note_comp_firebase/note_controller.dart';

//10/10/2024\
//import controller
// import 'package:monoreponotefirebase/note_controller.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const WebViewHomePage(),
    ),
  );
}

class WebViewHomePage extends StatefulWidget {
  const WebViewHomePage({Key? key}) : super(key: key);

  @override
  State<WebViewHomePage> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewHomePage> {
  //controller init
  // late NoteControlller noteControlller;
  late final WebViewController controller;
  //new 8/10/2024
  late InAppWebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    controller = WebViewController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: Container(
        child: Column(children: <Widget>[
          Expanded(
            child: InAppWebView(
              initialData: InAppWebViewInitialData(
                  data:
                      """
                <!DOCTYPE html>

<html lang="en">
  <head>
    <title>Load file or HTML string example</title>
    <link rel="stylesheet" href="www/styles/style.css" />
    <script>
      function submitForm() {
        var topic = document.getElementsByName("topic")[0].value;
        var description = document.getElementsByName("description")[0].value;
        var data = {
          topic: topic,
          description: description,
        };
        window.flutter_inappwebview.callHandler("submitForm", JSON.stringify(data));
      }

    </script>
  </head>
  <body>
    <h1>Add Note from Flutter WebView</h1>
    <div>
      <form>
        <table class="container" >
          <tr>
            <td>Topic</td>
          </tr>
          <tr></tr>
            <td><input type="text" name="topic" /></td>
          </tr>
          <tr>
            <td>Description</td>
          </tr>
          <tr>
            <td><input type="text" name="description" /></td>
          </tr>
        </table>
       
          
        <input type="submit" value="Submit"  onclick="submitForm()" />
      </form>
    </div>
  </body>
</html>
"""),
              initialSettings: InAppWebViewSettings(
                javaScriptEnabled: true,
              ),
              onWebViewCreated: (InAppWebViewController controller) {
                _webViewController = controller;
                _webViewController.addJavaScriptHandler(
                    handlerName: 'submitForm',
                    callback: (args) async {
                      String jsonData = args[0];
                      Map<String, dynamic> data = jsonDecode(jsonData);
                      String topic = data['topic'];
                      String description = data['description'];

                      //handle input
                      // noteControlller = Get.find<NoteControlller>();
                      // noteControlller.topic.text = topic;
                      // noteControlller.description.text = description;
                      // noteControlller.addNote();
                      Get.back();
                    });
              },
            ),
          ),
        ]),
      ),
    );
  }
}
