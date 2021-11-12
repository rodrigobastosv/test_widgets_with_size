import 'package:flutter/material.dart';
import 'package:test_widgets_with_size/src/utils.dart';

import 'device.dart';

const kTestDefaultWidth = 800.0;
const kTestDefaultHeight = 600.0;

class SizedWidget extends StatelessWidget {
  const SizedWidget({
    Key? key,
    required this.widget,
    this.width = kTestDefaultWidth,
    this.height = kTestDefaultHeight,
    this.devicePixelRatio = 1.0,
  }) : super(key: key);

  final Widget widget;
  final double width;
  final double height;
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

class DeviceWidget extends StatelessWidget {
  const DeviceWidget({
    Key? key,
    required this.widget,
    required this.device,
  }) : super(key: key);

  final Widget widget;
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