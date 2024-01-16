import 'package:flutter/material.dart';

void showAllowNotificationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Allow Notifications"),
        content: const Text("Allow notifications for timely updates."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Allow"),
          ),
        ],
      );
    },
  );
}
