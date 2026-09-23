import 'package:flutter/cupertino.dart';

import 'contact_groups.dart';

class AdaptiveLayout extends StatefulWidget {  //stateful to be able to change the current selected group
  const AdaptiveLayout({super.key});

  @override
  State<AdaptiveLayout> createState() => _AdaptiveLayoutState();
}

class _AdaptiveLayoutState extends State<AdaptiveLayout> {
  @override
  Widget build(BuildContext context) {
    return const ContactGroupsPage(); // Temporary placeholder
  }
}
