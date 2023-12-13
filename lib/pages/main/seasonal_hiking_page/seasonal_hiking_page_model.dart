import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'seasonal_hiking_page_widget.dart' show SeasonalHikingPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeasonalHikingPageModel
    extends FlutterFlowModel<SeasonalHikingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController5;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController6;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController7;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController8;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController9;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController10;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController11;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController12;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    expandableController1.dispose();
    expandableController2.dispose();
    expandableController3.dispose();
    expandableController4.dispose();
    expandableController5.dispose();
    expandableController6.dispose();
    expandableController7.dispose();
    expandableController8.dispose();
    expandableController9.dispose();
    expandableController10.dispose();
    expandableController11.dispose();
    expandableController12.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}