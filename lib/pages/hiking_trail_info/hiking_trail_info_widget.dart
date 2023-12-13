import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:mount_ack/service/route_service.dart';
import 'package:mount_ack/models/route.dart' as route_model;

import 'hiking_trail_info_model.dart';
export 'hiking_trail_info_model.dart';

class HikingTrailInfoWidget extends StatefulWidget {
  const HikingTrailInfoWidget({Key? key}) : super(key: key);

  @override
  _HikingTrailInfoWidgetState createState() => _HikingTrailInfoWidgetState();
}

class _HikingTrailInfoWidgetState extends State<HikingTrailInfoWidget> {
  late HikingTrailInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final GetRoutService _getRoutService = GetRoutService();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HikingTrailInfoModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          title: Text(
            '등산 경로',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: Container(
                      width: 360,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                            hintText: '산을 검색하세요.',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                              fontFamily: 'Roboto',
                              color: Color(0xFF777777),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.search_rounded,
                              color: Color(0xFF777777),
                              size: 26,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ),
                // *** 추천 등산로 바텀 부분은 이 컬럼을 사용
                FutureBuilder<List<route_model.Route>>(
                    future: _getRoutService.getRoute(),
                    builder: (context, AsyncSnapshot<List<route_model.Route>> snapshot) {
                      if (snapshot.hasData == false)
                        return CircularProgressIndicator();
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(25, 10, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.insights_rounded,
                                      color: Color(0xFF777777),
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                      child: Text(
                                        '금주의 추천 등산로',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  ...(snapshot.data?.map((route_model.Route e) => Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color:
                                        FlutterFlowTheme.of(context).secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding:
                                        EdgeInsetsDirectional.fromSTEB(20, 15, 15, 18),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    e.mntnNm.toString(),
                                                    style: FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                      fontFamily: 'Roboto',
                                                      color: FlutterFlowTheme.of(context)
                                                          .primaryText,
                                                      fontSize: 22,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional.fromSTEB(0, 4, 8, 0),
                                                    child: AutoSizeText(
                                                      e.pmntnNm.toString(),
                                                      textAlign: TextAlign.start,
                                                      style: FlutterFlowTheme.of(context)
                                                          .labelMedium
                                                          .override(
                                                        fontFamily: 'Roboto',
                                                        color: Color(0xFF777777),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                  child: InkWell(
                                                    splashColor: Colors.transparent,
                                                    focusColor: Colors.transparent,
                                                    hoverColor: Colors.transparent,
                                                    highlightColor: Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed<Route>(
                                                        'hiking_trail_detail_page',
                                                        extra: e.toJson(),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons.chevron_right_rounded,
                                                      color: Color(0xFF777777),
                                                      size: 24,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 9, 0),
                                                  child: Text(
                                                    '난이도: ${e.pmntnDffl.toString()}',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Roboto',
                                                      color: Color(0xFF777777),
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )).toList() ?? []),
                                ],
                              ),
                            ],
                          ),
                          // *** 등산로 검색 결과 바텀 부분은 이 컬럼을 사용
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(25, 10, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.place_rounded,
                                      color: Color(0xFF777777),
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                      child: Text(
                                        '검색결과 총 3개',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 15, 15, 18),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '개금산',
                                                    style: FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                      fontFamily: 'Roboto',
                                                      color:
                                                      FlutterFlowTheme.of(context)
                                                          .primaryText,
                                                      fontSize: 22,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                        0, 4, 8, 0),
                                                    child: AutoSizeText(
                                                      '전평제길-순환좌1길구간',
                                                      textAlign: TextAlign.start,
                                                      style: FlutterFlowTheme.of(context)
                                                          .labelMedium
                                                          .override(
                                                        fontFamily: 'Roboto',
                                                        color: Color(0xFF777777),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                      0, 4, 0, 0),
                                                  child: InkWell(
                                                    splashColor: Colors.transparent,
                                                    focusColor: Colors.transparent,
                                                    hoverColor: Colors.transparent,
                                                    highlightColor: Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'hiking_trail_detail_page');
                                                    },
                                                    child: Icon(
                                                      Icons.chevron_right_rounded,
                                                      color: Color(0xFF777777),
                                                      size: 24,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                      0, 8, 9, 0),
                                                  child: Text(
                                                    '난이도: 쉬움',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Roboto',
                                                      color: Color(0xFF777777),
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
