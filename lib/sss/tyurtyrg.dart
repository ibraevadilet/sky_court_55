import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sky_court/core/bottom_bar.dart';
import 'package:sky_court/main.dart';
import 'package:sky_court/sss/gnchgc.dart';

Future<void> kityuthbnd(BuildContext context) async {
  final currencyAdaptyRestoreResult = await HETethgnrtr().iuyitrhdgf();
  if (currencyAdaptyRestoreResult?.accessLevels['premium']?.isActive ?? false) {
    asdasfasfas.setBool("sdfsfafsa", true);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const BottomBar()),
      (route) => false,
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Restore purchase'),
        content: const Text(
            'Your purchase is not found. Write to currencySupport: https://forms.gle/mdmW3VDo1Mx4HF369'),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () => {Navigator.of(context).pop()},
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
