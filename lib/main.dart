import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/sliverbuider.dart';

import 'bottom_Steet.dart';
import 'bottomsheet.dart';
import 'cliper ret.dart';
import 'experience_resumue_ui.dart';
import 'hoattelui.dart';
import 'indroductionscreen.dart';
import 'musicplayer.dart';
import 'new.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context){
        return MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home: Music ());
      }));
}

