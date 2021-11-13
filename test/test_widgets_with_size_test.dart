import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_widgets_with_size/src/device.dart';
import 'package:test_widgets_with_size/src/utils.dart';
import 'package:test_widgets_with_size/test_widgets_with_size.dart';

void main() {
  group(
    'SizedWidget',
    () {
      testWidgets(
        'should work with default values',
        (tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: SizedWidget(
                widget: _TestWidget(
                  onPressed: (context) {
                    final size = MediaQuery.of(context).size;
                    expect(size.height, kTestDefaultHeight);
                    expect(size.width, kTestDefaultWidth);
                  },
                ),
                height: 1200,
                width: 800,
              ),
            ),
          );
          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();
        },
      );

      testWidgets(
        'should work with given values',
        (tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: SizedWidget(
                widget: _TestWidget(
                  onPressed: (context) {
                    final size = MediaQuery.of(context).size;
                    expect(size.height, 800);
                    expect(size.width, 1200);
                  },
                ),
                width: 1200,
                height: 800,
              ),
            ),
          );
          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();
        },
      );
    },
  );

  group(
    'DeviceWidget',
    () {
      testWidgets(
        'should work with a given device',
        (tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: DeviceWidget(
                widget: _TestWidget(
                  onPressed: (context) {
                    final deviceSize = getDeviceSize(Device.iPhone12ProMax);
                    final size = MediaQuery.of(context).size;
                    expect(size.height, deviceSize.height);
                    expect(size.width, deviceSize.width);
                  },
                ),
                device: Device.iPhone12ProMax,
              ),
            ),
          );
          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();
        },
      );
    },
  );
}

class _TestWidget extends StatelessWidget {
  const _TestWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function(BuildContext) onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Size me'),
      onPressed: () => onPressed(context),
    );
  }
}
