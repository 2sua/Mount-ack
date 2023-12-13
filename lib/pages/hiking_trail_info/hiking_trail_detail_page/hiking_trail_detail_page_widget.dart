import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'hiking_trail_detail_page_model.dart';
export 'hiking_trail_detail_page_model.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:mount_ack/service/route_service.dart';
import 'package:mount_ack/models/route.dart' as route_model;

const String kakaoMapKey = '71e91254a407783fddea802ea4946620';

class HikingTrailDetailPageWidget extends StatefulWidget {
  const HikingTrailDetailPageWidget({Key? key, required this.detailData}) : super(key: key);

  final dynamic detailData;

  @override
  _HikingTrailDetailPageWidgetState createState() =>
      _HikingTrailDetailPageWidgetState();
}

class _HikingTrailDetailPageWidgetState extends State<HikingTrailDetailPageWidget> {
  late HikingTrailDetailPageModel _model;
  late route_model.Route routeDetail;
  late dynamic detailData;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  // final GetRoutService _getRoutService = GetRoutService();


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HikingTrailDetailPageModel());
    detailData = widget.detailData;

    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
    _model.expandableController3 = ExpandableController(initialExpanded: false);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(detailData);
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detailData['mntnNm'].toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      detailData['pmntnNm'].toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Text(
                  '난이도: ${detailData['pmntnDffl'].toString()}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: double.infinity,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    child: ExpandableNotifier(
                      controller: _model.expandableController1,
                      child: ExpandablePanel(
                        header: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.hiking_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24,
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Text(
                                  '등산 경로',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        collapsed: Text(
                          ' ',
                          style:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 1,
                          ),
                        ),
                        // *** 카카오맵 뷰 들어갈 곳
                        expanded: SizedBox(
                          child: KakaoMapView(
                            width: 350,
                            height: 450,
                            kakaoMapKey: kakaoMapKey,
                            lat: 35.547759,
                            lng: 129.043057,
                            showMapTypeControl: true,
                            showZoomControl: true,
                            markerImageURL: 'https://img.icons8.com/glyph-neue/64/176ffe/region-code.png',
                          ),
                        ),
                        // expanded: Text(
                        //   '지도 넣으시요...',
                        //   style: FlutterFlowTheme.of(context).bodyMedium,
                        // ),
                        theme: ExpandableThemeData(
                          tapHeaderToExpand: true,
                          tapBodyToExpand: false,
                          tapBodyToCollapse: false,
                          headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                          hasIcon: true,
                          expandIcon: Icons.keyboard_arrow_down_rounded,
                          collapseIcon: Icons.keyboard_arrow_up_rounded,
                          iconSize: 24,
                          iconColor: Color(0xFF777777),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 360,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFC0C0C0),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: ExpandableNotifier(
                    controller: _model.expandableController2,
                    child: ExpandablePanel(
                      header: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                '등산로 정보',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryText,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      collapsed: Text(
                        ' ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 1,
                        ),
                      ),
                      expanded: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'ㆍ등산로 길이: ${detailData['pmntnLt'].toString()}km',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'ㆍ상행 시간: ${detailData['pmntnUppl'].toString()}분',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Text(
                                'ㆍ하행 시간: ${detailData['pmntnGodn'].toString()}분',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        expandIcon: Icons.keyboard_arrow_down_rounded,
                        collapseIcon: Icons.keyboard_arrow_up_rounded,
                        iconSize: 24,
                        iconColor: Color(0xFF777777),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 360,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFC0C0C0),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: ExpandableNotifier(
                    controller: _model.expandableController3,
                    child: ExpandablePanel(
                      header: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.report_problem_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                '등산로 주의사항',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryText,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      collapsed: Text(
                        ' ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 1,
                        ),
                      ),
                      expanded: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Text(
                                detailData['pmntnRisk'].toString(),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        expandIcon: Icons.keyboard_arrow_down_rounded,
                        collapseIcon: Icons.keyboard_arrow_up_rounded,
                        iconSize: 24,
                        iconColor: Color(0xFF777777),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
