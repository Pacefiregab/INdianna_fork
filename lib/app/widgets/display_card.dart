import 'package:flutter/material.dart';

import 'package:Indiana/app/config/config_file.dart' as config;
import 'package:Indiana/app/themes/fonts.dart' as app_fonts;

class DisplayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              config.appName,
              style: app_fonts.AppFonts.h1,
            ),
          ],
        ),
      ),
    );
  }
}
