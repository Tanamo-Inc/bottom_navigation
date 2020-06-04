import 'package:flutter/cupertino.dart';

import '../themes/theme.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is my Chat Page",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.accentColor.withOpacity(0.7)),
      ),
    );
  }
}
