import 'package:flutter/cupertino.dart';

import 'contacts.dart';

const largeScreenMinWidth = 600;

class AdaptiveLayout extends StatefulWidget {
  //stateful to be able to change the current selected group
  const AdaptiveLayout({super.key});

  @override
  State<AdaptiveLayout> createState() => _AdaptiveLayoutState();
}

class _AdaptiveLayoutState extends State<AdaptiveLayout> {
  int selectedListId = 0;

  void _onContactListSelected(int listId) {
    setState(() {
      selectedListId = listId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isLargeScreen =
            constraints.maxWidth > largeScreenMinWidth; //screen size detection

        if (isLargeScreen) {
          return _buildLargeScreenLayout();
        } else {
          return const ContactListsPage(
            listId: 0,
          ); //default list id for small screen
        }
      },
    );
  }

  Widget _buildLargeScreenLayout() {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      child: SafeArea(
        child: Row(
          children: [
            const SizedBox(width: 320, child: Text('Sidebar placeholder')),
            Container(width: 1, color: CupertinoColors.separator),
            const Expanded(child: Text('Details placeholder')),
          ],
        ),
      ),
    );
  }
}
