import 'package:flutter/material.dart';

class FeaturePlaceholderPage extends StatelessWidget {
  const FeaturePlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Tính năng đang phát triển!'),
              Text('Xin hãy chờ đợi!'),
            ],
          ),
        ),
      ),
    );
  }
}
