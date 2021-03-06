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
import 'package:jappeos_desktop/system/appSystem/application.dart';
import 'package:jappeos_desktop/system/appSystem/iApplication.dart';
import 'package:jappeos_desktop/system/widgets/generalWidgets.dart';
import 'package:jappeos_desktop/desktop.dart';

class Settings extends Application implements IApplication {
  Settings() : super("Settings", "settings", null);

  void app$launch() {
    DesktopState.getWmController()?.wm$spawn_gui_window("Settings", body(), cwd());
  }

  Widget body() {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            width: 332,
            child: ListView(
              children: [

              ],
            ),
          ),
          Positioned(
            left: 332,
            width: 1,
            top: 0,
            bottom: 0,
            child: Container(width: 1, color: Colors.grey,)
          ),
          Positioned(
            left: 333,
            child: Container(),
          ),
        ],
      ),
    );
  }

  // OLD
  /*Widget body() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(
              top: 0,
              left: 332,
            ),
            color: Colors.transparent,
            child: ListView(
              padding: EdgeInsets.all(15),
              children: [
                JSettingsTileTitle(
                  jtitle: 'Connect to wifi',
                  jenditem: Container(),
                ),
                JSettingsTile(
                  // setting tile
                  //jheight: 100,
                  jitems: Column(
                    // setting tile content
                    children: [
                      Container(
                        height: 20,
                        child: Text(
                          'nothing here yet',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 330, top: 10, bottom: 10),
              width: 1,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              //margin: EdgeInsets.only(top: 55,),
              padding: EdgeInsets.only(
                top: 10,
              ),
              width: 330, // 300 + 10 + 10 + 10
              height: double.infinity,
              color: Colors.transparent,
              child: ListView(children: [
                SettingsSidebarButton(
                  jicon: Icons.wifi,
                  jtext: 'Wifi',
                  jstartopacity: 1,
                  jhighlight: DesktopCfg.DESKTOPCFG_INSTANCE
                          .getJappeosThemeColor(JappeOsColor.DEFAULT) ??
                      Colors.white,
                ),
                SettingsSidebarButton(
                  jicon: Icons.bluetooth,
                  jtext: 'Bluetooth',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.edit,
                  jtext: 'Appearance',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.notifications,
                  jtext: 'Notifications',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.system_update,
                  jtext: 'Updates',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.language,
                  jtext: 'Regions & Language',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.account_circle,
                  jtext: 'Accounts',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.security,
                  jtext: 'Security',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.surround_sound,
                  jtext: 'Sound',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.power_settings_new,
                  jtext: 'Power',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
                SettingsSidebarButton(
                  jicon: Icons.info,
                  jtext: 'About',
                  jstartopacity: 0,
                  jhighlight:
                      DesktopCfg.DESKTOPCFG_INSTANCE.dsktp_TEXT_COLOR_LIGHT,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }*/

  Widget cwd() {
    return Align(
      alignment: Alignment.centerLeft,
      child: JAppMainSearchBox(
        jbgtext: "Search...",
      ),
    );
  }
}
