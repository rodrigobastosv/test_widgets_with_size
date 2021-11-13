import 'package:flutter/material.dart';
import 'package:test_widgets_with_size/src/utils.dart';

import 'device.dart';

/// Default test width. This is the same default value user by Flutter
const kTestDefaultWidth = 800.0;

/// Default test height. This is the same default value user by Flutter
const kTestDefaultHeight = 600.0;

/// Widget that make it possible to simulate any given screen size
class SizedWidget extends StatelessWidget {
  const SizedWidget({
    Key? key,
    required this.widget,
    this.width = kTestDefaultWidth,
    this.height = kTestDefaultHeight,
    this.devicePixelRatio = 1.0,
  }) : super(key: key);

  /// Widget under testing
  final Widget widget;

  /// Desired Width
  final double width;

  /// Desired Height
  final double height;

  /// Desired Pixel Ratio
  final double devicePixelRatio;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(
        size: Size(width, height),
        devicePixelRatio: devicePixelRatio,
      ),
      child: widget,
    );
  }
}

/// Widget that make it possible to simulate any given Device from the list
/// of [Device]'s
class DeviceWidget extends StatelessWidget {
  const DeviceWidget({
    Key? key,
    required this.widget,
    required this.device,
  }) : super(key: key);

  /// Widget under testing
  final Widget widget;

  /// Device that's beeing targeted. Pick any from the [Device] enum.
  final Device device;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(
        size: getDeviceSize(device),
        devicePixelRatio: getDevicePixelRatio(device),
      ),
      child: widget,
    );
  }
}
