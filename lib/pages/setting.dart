import 'package:flutter/widgets.dart';

import '../themes/theme.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is my Settings Page",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryDark.withOpacity(0.7)),
      ),
    );
  }
}
