//  JappeOS-Desktop, The desktop environment for JappeOS.
//  Copyright (C) 2022  Jappe02
//  
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as
//  published by the Free Software Foundation, either version 3 of the
//  License, or (at your option) any later version.
//  
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//  
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>.


import 'package:flutter/material.dart';

/// This class is used for configuring the desktop environment, the settings app may use this information and change it at any time.
/// Use the [DESKTOPCFG_INSTANCE] object to use it.
/// 
/// Made by Jappe. (2022)
class DesktopCfg {

  /// This is the instance for the DesktopCfg class, use this to access all the variables it contains.
  /// 
  /// Made by Jappe. (2022)
  static DesktopCfg DESKTOPCFG_INSTANCE = new DesktopCfg();

  // The color mode of the UI.
  ColorMode _colorMode = ColorMode.DARK;

  // --- [de-info]

  /// Get the name of the desktop.
  /// 
  /// Made by Jappe. (2022)
  final String de_NAME = "jappe-os desktop";

  /// Get the version of the desktop.
  /// 
  /// Made by Jappe. (2022)
  final String de_VERSION = "alpha: 1.1.3";

  // --- [theme stuff]

  /// The blur color for the dark theme of the desktop. [blur colors]
  /// 
  /// Made by Jappe. (2022)
  final Color dsktp_BLUR_COLOR_DARK = Colors.black.withOpacity(0.5);

  /// The blur color for the light theme of the desktop.
  /// 
  /// Made by Jappe. (2022)
  final Color dsktp_BLUR_COLOR_LIGHT = Colors.white.withOpacity(0.5);

  /// The background blur color for the dark theme of the desktop. [blur color background]
  /// 
  /// Made by Jappe. (2022)
  final Color dsktp_BLUR_COLOR_DARK_BG = Color.fromARGB(167, 27, 27, 27);

  /// The background blur color for the light theme of the desktop. [blur color background]
  /// 
  /// Made by Jappe. (2022)
  final Color dsktp_BLUR_COLOR_LIGHT_BG = Color.fromARGB(167, 206, 206, 206);

  /// The normal text color for the light theme of the desktop. [text color]
  /// 
  /// Made by Jappe. (2022)
  final dsktp_TEXT_COLOR_LIGHT = Color(0xFFFFFFFF);

  /// The normal text color for the dark theme of the desktop. [text color]
  /// 
  /// Made by Jappe. (2022)
  final dsktp_TEXT_COLOR_DARK = Color(0xFF000000);

  /// Get the default JappeOS UI theme color as a Color [accent color]
  /// 
  /// Made by Jappe. (2022)
  Color? getJappeosThemeColor(JappeOsColor arg0) {
    switch (arg0) {
      case JappeOsColor.BLUE:
        {
          return Colors.blueAccent;
        }
      case JappeOsColor.YELLOW:
        {
          return Colors.yellowAccent;
        }
      case JappeOsColor.GREEN:
        {
          return Colors.greenAccent;
        }
      case JappeOsColor.RED:
        {
          return Colors.redAccent;
        }
      case JappeOsColor.DEFAULT:
        {
          return Colors.blueAccent;
        }
    }
    return null;
  }

  /// Gets  the color mode of the UI.
  /// 
  /// Made by Jappe. (2022)
  ColorMode getColorMode() {
    return _colorMode;
  }

  /// Sets the color mode of the UI.
  /// 
  /// Made by Jappe. (2022)
  void setColorMode(ColorMode colorMode) {
    _colorMode = colorMode;
  }

  /// This is the wallpaper of the desktop.
  /// 
  /// Made by Jappe. (2022)
  final String dsktpWallpaper =
      "lib/images/desktop/backgrounds/wallpaper2.jpg"; // This should get the picture from a local folder in the future or something.

}

/// This is just an `enum` for all the custom colors for JappeOS Desktop UI.
/// 
/// Made by Jappe. (2022)
enum JappeOsColor { DEFAULT, BLUE, YELLOW, GREEN, RED }

/// This is an `enum` for all the color modes for JappeOS Desktop UI.
/// 
/// Made by Jappe. (2022)
enum ColorMode { DARK, LIGHT }