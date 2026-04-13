import 'package:flutter/material.dart';
import 'package:task_taste/common/widgets/widget_module.dart';

class UnfocusScaffold extends StatelessWidget {
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final Widget? body;

  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;

  final Widget? drawer;
  final Widget? endDrawer;

  final bool resizeToAvoidBottomInset;
  final bool extendBody;
  final bool extendBodyBehindAppBar;

  final EdgeInsetsGeometry? padding;

  const UnfocusScaffold({
    super.key,
    this.backgroundColor,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.drawer,
    this.endDrawer,
    this.resizeToAvoidBottomInset = true,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = body ?? const SizedBox.shrink();

    if (padding != null) {
      content = Padding(padding: padding!, child: content);
    }
    return UnfocusWidget(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar,
        body: content,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        bottomNavigationBar: bottomNavigationBar,
        bottomSheet: bottomSheet,
        drawer: drawer,
        endDrawer: endDrawer,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        extendBody: extendBody,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
      ),
    );
  }
}
