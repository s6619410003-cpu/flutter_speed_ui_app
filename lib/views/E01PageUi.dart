import 'package:flutter/material.dart';

class E01PageUi extends StatefulWidget {
  const E01PageUi({super.key});

  @override
  State<E01PageUi> createState() => _E01PageUiState();
}

class _E01PageUiState extends State<E01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E01 Page UI'),
      ),
      body: const Center(
        child: Text('This is E01 Page UI'),
      ),
    );
  }
}
