import 'package:flutter/material.dart';

class PrimaryLayoutWithoutAppbar extends StatelessWidget {
  final Widget widget;

  const PrimaryLayoutWithoutAppbar({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: widget,
    );
  }
}
