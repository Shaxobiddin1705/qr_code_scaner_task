import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR GENERATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: QrImage(
          data: "http://onelink.to/csd4de",
          size: 250,
          version: QrVersions.auto,
          // embeddedImage: const AssetImage('assets/images/flutter_logo.jpg'),
          // embeddedImageStyle: QrEmbeddedImageStyle(size: const Size(70, 70)),
        ),
      ),
    );
  }
}
