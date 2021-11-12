import 'package:flutter/material.dart';

import 'device.dart';

double getDevicePixelRatio(Device device) {
  switch (device) {
    case Device.iPhone12ProMax:
      return 3;
    case Device.iPhone12Pro:
      return 3;
    case Device.iPhone12:
      return 3;
    case Device.iPhone12Mini:
      return 3;
    case Device.iPhoneSE:
      return 2;
    case Device.iPhone11ProMax:
      return 3;
    case Device.iPhone11XSMax:
      return 3;
    case Device.iPhone11XR:
      return 3;
    case Device.iPhone11:
      return 3;
    case Device.iPhoneX:
      return 3;
    case Device.iPhoneXS:
      return 3;
    case Device.iPhone11Pro:
      return 3;
    case Device.iPhone8:
      return 2;
    case Device.iPhone7:
      return 2;
    case Device.iPhone8Plus:
      return 3;
    case Device.iPhone7Plus:
      return 3;
    case Device.iPhone6SPlus:
      return 3;
    case Device.iPhoneSE2:
      return 2;
    case Device.iPhone6S:
      return 2;
    case Device.iPhone6:
      return 2;
    case Device.iPodTouch:
      return 2;
    case Device.lgG5:
      return 4;
    case Device.lgG4:
      return 4;
    case Device.lgG3:
      return 4;
    case Device.lgOptimusG:
      return 2;
    case Device.lgNexus5:
      return 3;
    case Device.lgNexus4:
      return 2;
    case Device.samsungGalaxyS9Plus:
      return 4;
    case Device.samsungGalaxyS9:
      return 4;
    case Device.samsungGalaxyS8Plus:
      return 4;
    case Device.samsungGalaxyS8:
      return 4;
    case Device.samsungGalaxyS7Edge:
      return 4;
    case Device.samsungGalaxyS7:
      return 4;
    case Device.samsungGalaxyS6:
      return 4;
    case Device.samsungGalaxyS5:
      return 3;
    case Device.samsungGalaxyS4:
      return 3;
    case Device.samsungGalaxyNexus:
      return 2;
    case Device.samsungGalaxyNote8:
      return 4;
    case Device.samsungGalaxyNote4:
      return 4;
    case Device.samsungGalaxyNote3:
      return 3;
    case Device.samsungGalaxyNote2:
      return 2;
    case Device.samsungGalaxyNote:
      return 2;
    case Device.microsoftLumia1520:
      return 2.5;
    case Device.microsoftLumia1020:
      return 2.4;
    case Device.microsoftLumia925:
      return 2.4;
    case Device.microsoftLumia920:
      return 2.4;
    case Device.microsoftLumia830:
      return 2;
    case Device.microsoftLumia620:
      return 1.5;
    case Device.motorolaNexus6:
      return 3.5;
    case Device.htcOne:
      return 3;
    case Device.htc8X:
      return 3;
    case Device.htcEvo3D:
      return 1.5;
    case Device.sonyXperiaZ3:
      return 2;
    case Device.sonyXperiaZ:
      return 2;
    case Device.sonyXperiaS:
      return 2;
    case Device.sonyXperiaP:
      return 1.5;
    case Device.xyaomiRedmiNote8T:
      return 2.75;
    case Device.xyaomiRedmiNote6:
      return 2.75;
    case Device.xyaomiRedmiNote5:
      return 2.75;
    case Device.xyaomiMi4:
      return 3;
    case Device.xyaomiMi3:
      return 3;
    case Device.lenovoK900:
      return 3;
  }
}

Size getDeviceSize(Device device) {
  switch (device) {
    case Device.iPhone12ProMax:
      return const Size(428, 926);
    case Device.iPhone12Pro:
      return const Size(390, 844);
    case Device.iPhone12:
      return const Size(390, 844);
    case Device.iPhone12Mini:
      return const Size(375, 812);
    case Device.iPhoneSE:
      return const Size(375, 667);
    case Device.iPhone11ProMax:
      return const Size(414, 896);
    case Device.iPhone11XSMax:
      return const Size(414, 896);
    case Device.iPhone11XR:
      return const Size(414, 896);
    case Device.iPhone11:
      return const Size(414, 896);
    case Device.iPhoneX:
      return const Size(375, 812);
    case Device.iPhoneXS:
      return const Size(375, 812);
    case Device.iPhone11Pro:
      return const Size(375, 812);
    case Device.iPhone8:
      return const Size(375, 667);
    case Device.iPhone7:
      return const Size(375, 667);
    case Device.iPhone8Plus:
      return const Size(414, 735);
    case Device.iPhone7Plus:
      return const Size(414, 735);
    case Device.iPhone6SPlus:
      return const Size(414, 735);
    case Device.iPhoneSE2:
      return const Size(375, 667);
    case Device.iPhone6S:
      return const Size(375, 667);
    case Device.iPhone6:
      return const Size(375, 667);
    case Device.iPodTouch:
      return const Size(320, 568);
    case Device.lgG5:
      return const Size(360, 640);
    case Device.lgG4:
      return const Size(360, 640);
    case Device.lgG3:
      return const Size(360, 640);
    case Device.lgOptimusG:
      return const Size(384, 640);
    case Device.lgNexus5:
      return const Size(360, 640);
    case Device.lgNexus4:
      return const Size(384, 640);
    case Device.samsungGalaxyS9Plus:
      return const Size(360, 740);
    case Device.samsungGalaxyS9:
      return const Size(360, 740);
    case Device.samsungGalaxyS8Plus:
      return const Size(360, 740);
    case Device.samsungGalaxyS8:
      return const Size(360, 740);
    case Device.samsungGalaxyS7Edge:
      return const Size(360, 640);
    case Device.samsungGalaxyS7:
      return const Size(360, 640);
    case Device.samsungGalaxyS6:
      return const Size(360, 640);
    case Device.samsungGalaxyS5:
      return const Size(360, 640);
    case Device.samsungGalaxyS4:
      return const Size(360, 640);
    case Device.samsungGalaxyNexus:
      return const Size(360, 600);
    case Device.samsungGalaxyNote8:
      return const Size(360, 740);
    case Device.samsungGalaxyNote4:
      return const Size(360, 640);
    case Device.samsungGalaxyNote3:
      return const Size(360, 640);
    case Device.samsungGalaxyNote2:
      return const Size(360, 640);
    case Device.samsungGalaxyNote:
      return const Size(400, 640);
    case Device.microsoftLumia1520:
      return const Size(432, 768);
    case Device.microsoftLumia1020:
      return const Size(320, 480);
    case Device.microsoftLumia925:
      return const Size(320, 480);
    case Device.microsoftLumia920:
      return const Size(320, 480);
    case Device.microsoftLumia830:
      return const Size(320, 480);
    case Device.microsoftLumia620:
      return const Size(320, 480);
    case Device.motorolaNexus6:
      return const Size(428, 926);
    case Device.htcOne:
      return const Size(360, 640);
    case Device.htc8X:
      return const Size(320, 480);
    case Device.htcEvo3D:
      return const Size(360, 640);
    case Device.sonyXperiaZ3:
      return const Size(360, 598);
    case Device.sonyXperiaZ:
      return const Size(360, 640);
    case Device.sonyXperiaS:
      return const Size(360, 640);
    case Device.sonyXperiaP:
      return const Size(360, 640);
    case Device.xyaomiRedmiNote8T:
      return const Size(393, 775);
    case Device.xyaomiRedmiNote6:
      return const Size(393, 739);
    case Device.xyaomiRedmiNote5:
      return const Size(393, 739);
    case Device.xyaomiMi4:
      return const Size(360, 640);
    case Device.xyaomiMi3:
      return const Size(360, 640);
    case Device.lenovoK900:
      return const Size(360, 640);
  }
}
