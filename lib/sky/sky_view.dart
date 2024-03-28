import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sky_court/sky/sky_local_object.dart';
import 'package:sky_court/sky/sky_repository.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SkyView extends StatefulWidget {
  final String skylink;
  final bool skycache;

  const SkyView({
    super.key,
    required this.skylink,
    required this.skycache,
  });

  @override
  State<StatefulWidget> createState() {
    return _SkyViewState();
  }
}

class _SkyViewState extends State<SkyView> {
  late WebViewController wbController;
  late String wvlnk;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    wvlnk = widget.skylink;
    wbController = WebViewController()
      ..loadRequest(Uri.parse(wvlnk))
      ..setNavigationDelegate(
        NavigationDelegate(onUrlChange: (url) async {
          log('Current URL : ${url.url}');
          if (widget.skycache) {
            final skyCurrentUrl = url.url ?? '';
            final skyLocalObject = await SkyRepository.skyHGet();
            if (skyLocalObject != null) {
              final skyNewLocalObject = SkyLocalModel(
                regsky: skyLocalObject.regsky,
                strtsky: skyLocalObject.strtsky,
                logsky: skyLocalObject.logsky,
                cabsky: skyCurrentUrl,
              );
              await SkyRepository.skyHSet(skyNewLocalObject);
            }
          }
        }),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 5));
    });
    _enableRotation();
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

  void _enableRotation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}
