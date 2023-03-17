import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:
            'https://www.google.com/search?q=nearby+pesticide&rlz=1C1ONGR_enIN1013IN1013&oq=nearby+pesticide&aqs=chrome..69i57j0i13i512j0i390l4.21547j1j7&sourceid=chrome&ie=UTF-8',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
