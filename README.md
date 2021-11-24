<a href="https://www.buymeacoffee.com/rodrigobastosv" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

#  Introduction

This package was created to make it easy to test widgets on different sizes of devices. It provides a simple API where you can decide what height and screen width you want the tests to run on. You also have the option to choose a specific device to test your widgets on. The screen size and pixel density will suit the chosen device

# Basic Usage - SizedWidget

The most simple usage is the case you just want to pass height and width and want to run your test on.
To do that, just wrap the widget under testing in SizedWidget.

```dart

await tester.pumpWidget(
    MaterialApp(
        home: SizedWidget(
            widget: WidgetUnderTest(),
            height: 1200,
            width: 800,
        ),
    ),
);

```

This simple step will ensure your widget runs on a screen of 1200 height and 800 width. Of course you can pass any values you want
for both height and width.

# Basic Usage - DeviceWidget

Other usage is the case you want your widgets to run on the settings of a specific device. This package has a lot of device options to choose.

If you want to use this option, just wrap the widget under testing in the widget called DeviceWidget. In this case you have
to pass the desired Device. This package provides a list of diferent devices to choose.

```dart
await tester.pumpWidget(
    MaterialApp(
        home: DeviceWidget(
            widget: WidgetUnderTest(),
            device: Device.iPhone12ProMax,
        ),
    ),
);
```

## Todo

- [x] Tests

## Suggestions & Bugs

For any suggestions or bug report please head to [issue tracker][tracker].

[tracker]: https://github.com/rodrigobastosv/test_widgets_with_size/issues
