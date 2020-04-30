import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:captube/widgets/navigation_bar.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          //padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1230),
            child: Column(
              children: <Widget>[
                NavigationBar(),
                Expanded(
                  child: child, 
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
