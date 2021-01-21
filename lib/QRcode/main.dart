import 'package:flutter/material.dart';
import 'qrCode.dart';

void main() => runApp(mainApp());

class mainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scan QR code',
      home: qrBarCode(),
    );
  }
}
