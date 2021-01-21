import 'package:flutter/material.dart';
import 'package:bottom_personalized_dot_bar/bottom_personalized_dot_bar.dart';

void main() => runApp(navigationPage());

class navigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),);
  }
}


class HomePage extends StatelessWidget {
  String _itemSelected = 'item-1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BottomPersonalizedDotBar(
            keyItemSelected: _itemSelected,
            doneText: 'Done',
            settingTitleText: 'Your Menu',
            settingSubTitleText: 'Drag and drop options',
            iconSettingColor: const Color(0xFFFFD201),
            buttonDoneColor: const Color(0xFFFFD500),
            settingSubTitleColor: const Color(0xFFFECE02),
            hiddenItems: <BottomPersonalizedDotBarItem>[
              BottomPersonalizedDotBarItem('item-4',
                  icon: Icons.cloud, name: 'Nube', onTap: (itemSelected) {
                /* event selected */
              }),
              BottomPersonalizedDotBarItem('item-5',
                  icon: Icons.access_alarm,
                  name: 'Alarma', onTap: (itemSelected) {
                /* event selected */
              }),
              BottomPersonalizedDotBarItem('item-6',
                  icon: Icons.message, name: 'Mensaje', onTap: (itemSelected) {
                /* event selected */
              }),
              BottomPersonalizedDotBarItem('item-7',
                  icon: Icons.notifications,
                  name: 'Alerta', onTap: (itemSelected) {
                /* event selected */
              }),
              BottomPersonalizedDotBarItem('item-8',
                  icon: Icons.security,
                  name: 'Seguridad', onTap: (itemSelected) {
                /* event selected */
              }),
              BottomPersonalizedDotBarItem('item-9',
                  icon: Icons.help, name: 'Ayuda', onTap: (itemSelected) {
                /* event selected */
              }),
              BottomPersonalizedDotBarItem('item-10',
                  icon: Icons.settings, name: 'Config.', onTap: (itemSelected) {
                /* event selected */
              }),
            ],
            items: <BottomPersonalizedDotBarItem>[
              BottomPersonalizedDotBarItem('item-1',
                  icon: Icons.sentiment_very_satisfied,
                  name: 'Flutter', onTap: (itemSelected) {
                /* event selected */
              }),
              BottomPersonalizedDotBarItem('item-2',
                  icon: Icons.favorite_border,
                  name: 'Favorito', onTap: (itemSelected) {
                /* event selected */
              }),
              BottomPersonalizedDotBarItem('item-3',
                  icon: Icons.face, name: 'Perfil', onTap: (itemSelected) {
                /* event selected */
              }),
            ],
          ),
        ],
      ),
    );
  }
}
