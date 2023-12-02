import 'dart:typed_data';

import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

void main() => runApp(MaterialApp(home: QRScannerScreen()));

class QRScannerScreen extends StatefulWidget {
  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  String qrCodeResult = '';
  MobileScannerController cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: AiBarcodeScanner(
              onScan: (String value) {
                print(value);
              },
              onDetect: (BarcodeCapture barcodeCapture) {
                print(barcodeCapture);
              },
            ),
          ),
        ],
      ),
    );
  }
}
