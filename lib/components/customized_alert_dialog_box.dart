import 'package:flutter/material.dart';

class AlertDialogBox extends StatelessWidget {
  final textInAlertBox;

  const AlertDialogBox({
    Key key, this.textInAlertBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Error'),
      content: Text(textInAlertBox),
      actions: <Widget>[
        TextButton(
          child: Text('Close'),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop('dialog');
          },
        )
      ],
    );
  }
}
