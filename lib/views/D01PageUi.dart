import 'package:flutter/material.dart';

class D01PageUi extends StatefulWidget {
  const D01PageUi({super.key});

  @override
  State<D01PageUi> createState() => _D01PageUiState();
}

class _D01PageUiState extends State<D01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D01 Page UI'),
      ),
      body: const Center(
        child: Text('This is D01 Page UI'),
      ),
    );
  }
}
