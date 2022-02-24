import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  final int profileId;

  const TransferPage({Key? key, required this.profileId}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('transfer-page works!${widget.profileId}')),
    );
  }
}
