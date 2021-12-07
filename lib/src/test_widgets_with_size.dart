import 'package:flutter/material.dart';
import 'package:test_widgets_with_size/src/utils.dart';

import 'device.dart';

/// Default test width. This is the same default value user by Flutter
const kTestDefaultWidth = 800.0;

/// Default test height. This is the same default value user by Flutter
const kTestDefaultHeight = 600.0;

/// Widget that make it possible to simulate any given screen size
class SizedWidget extends StatelessWidget {
  /// The only required params is the widget under testing
  const SizedWidget({
    Key? key,
    required this.widget,
    this.width = kTestDefaultWidth,
    this.height = kTestDefaultHeight,
    this.devicePixelRatio = 1.0,
    this.textScaleFactor = 1.0,
  }) : super(key: key);

  /// Widget under testing
  final Widget widget;

  /// Desired Width
  final double width;

  /// Desired Height
  final double height;

  /// Desired Pixel Ratio
  final double devicePixelRatio;

  /// Desired Text Scale Factor
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(
        size: Size(width, height),
        devicePixelRatio: devicePixelRatio,
        textScaleFactor: textScaleFactor,
      ),
      child: widget,
    );
  }
}

/// Widget that make it possible to simulate any given Device from the list
/// of [Device]'s
class DeviceWidget extends StatelessWidget {
  /// The only required params are the widget under testing and the desired device
  const DeviceWidget({
    Key? key,
    required this.widget,
    required this.device,
    this.textScaleFactor = 1.0,
  }) : super(key: key);

  /// Widget under testing
  final Widget widget;

  /// Device that's beeing targeted. Pick any from the [Device] enum.
  final Device device;

  /// Desired Text Scale Factor
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(
        size: getDeviceSize(device),
        devicePixelRatio: getDevicePixelRatio(device),
        textScaleFactor: textScaleFactor,
      ),
      child: widget,
    );
  }
}
