import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resumeapp/screens/pdf_generator.dart';
import '../global.dart';

class PdfViewPage extends StatefulWidget {
  const PdfViewPage({super.key});

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        pdfFileName: "${txtFirstName.text} resume",
        build: (format) =>  pdfGenerator(),
      ),
    );
  }
}