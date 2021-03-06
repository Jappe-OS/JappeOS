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


import 'dart:math';
import 'package:flutter/material.dart';
import 'wmresizablewindow.dart';

/// This class can be used to spawn a new window.
/// 
/// Made by Jappe. (2022)
class WmController {
  WmController(this._onUpdate);

  // Resizable window
  List<ResizableWindow> _resizablewindows = List.empty(growable: true);
  List<ResizableWindow> get resizablewindows => _resizablewindows;

  VoidCallback _onUpdate;

  // Jappeos window spawner
  /// Spawns a new JappeOS window and displays it on the screen.
  /// 
  /// Parameters:
  /// ```dart
  /// - String title // This is the title of the window, it's displayed on the header.
  /// ```
  /// 
  /// ```dart
  /// - Widget body // This is the content of the window.
  /// ```
  /// 
  /// ```dart
  /// - Widget cwd // Custom window decorations, displayed on the header.
  /// ```
  /// 
  /// Made by Jappe. (2022)
  void wm$spawn_gui_window(String title, Widget body, Widget cwd) {
    _createNewWindowedApp(title, body, cwd);
  }

  void _addWindow() {
    _addWindowContent();
  }

  void _addWindowContent() {
    _createNewWindowedApp("Main Window", Container(), Container());
  }

  void _createNewWindowedApp(String title, Widget body, Widget cwd) {
    ResizableWindow resizableWindow = ResizableWindow(title, body, cwd);

    // Set initial position
    var rng = new Random();
    resizableWindow.x = rng.nextDouble() * 500;
    resizableWindow.y = rng.nextDouble() * 500;

    // Init onWindowDragged
    resizableWindow.onWindowDragged = (dx, dy) {
      var x1 = resizableWindow.x;
      var y1 = resizableWindow.y;

      if (x1 != null)
        x1 += dx;

      if (y1 != null)
        y1 += dy;


      resizableWindow.x = x1;
      resizableWindow.y = y1;

      // Put on top of stack
      _resizablewindows.remove(resizableWindow);
      _resizablewindows.add(resizableWindow);

      _onUpdate();
    };

    // Init onCloseButtonClicked
    resizableWindow.onCloseButtonClicked = () {
      _resizablewindows.remove(resizableWindow);
      _onUpdate();
    };

    // Add Window to List
    _resizablewindows.add(resizableWindow);

    // Update Widgets after adding the new App
    _onUpdate();
  }
}
