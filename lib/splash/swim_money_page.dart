import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SwimMoneyPage extends StatefulWidget {
  final String link;

  const SwimMoneyPage({
    super.key,
    required this.link,
  });

  @override
  State<StatefulWidget> createState() {
    return _SwimMoneyPageState();
  }
}

class _SwimMoneyPageState extends State<SwimMoneyPage> {
  late WebViewController wbController;
  late String wvlnk;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    wvlnk = widget.link;
    wbController = WebViewController()
      ..loadRequest(Uri.parse(wvlnk))
      ..setNavigationDelegate(
        NavigationDelegate(onUrlChange: (url) async {
          log('Current URL : ${url.url}');
          if (url.url != null) {
            final swimPrefs = await SharedPreferences.getInstance();
            swimPrefs.setString('swimKey', url.url!);
          }
        }),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 5));
    });
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await wbController.canGoBack()) {
          await wbController.goBack();
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewPadding.bottom,
          ),
          child: WebViewWidget(
            controller: wbController,
          ),
        ),
      ),
    );
  }
}
