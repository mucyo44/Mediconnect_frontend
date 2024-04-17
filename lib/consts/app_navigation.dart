import 'package:flutter/material.dart';

class AppNavigation {
  push(Widget widget, BuildContext context) async {
    return await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  pushReplacement(BuildContext context, Widget widget) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }

  pushAndRemoveUntil(Widget widget, BuildContext context) {
    return Navigator.pushAndRemoveUntil<dynamic>(
        context,
        MaterialPageRoute(builder: (BuildContext context) => widget),
        (route) => false);
  }

  pop(BuildContext context, [dynamic data]) {
    return Navigator.of(context).pop(data);
  }
}
