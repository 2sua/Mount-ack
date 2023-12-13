import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'seasonal_hiking_page_model.dart';
export 'seasonal_hiking_page_model.dart';

class SeasonalHikingPageWidget extends StatefulWidget {
  const SeasonalHikingPageWidget({Key? key}) : super(key: key);

  @override
  _SeasonalHikingPageWidgetState createState() =>
      _SeasonalHikingPageWidgetState();
}

class _SeasonalHikingPageWidgetState extends State<SeasonalHikingPageWidget>
    with TickerProviderStateMixin {
  late SeasonalHikingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeasonalHikingPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
    _model.expandableController3 = ExpandableController(initialExpanded: false);
    _model.expandableController4 = ExpandableController(initialExpanded: false);
    _model.expandableController5 = ExpandableController(initialExpanded: false);
    _model.expandableController6 = ExpandableController(initialExpanded: false);
    _model.expandableController7 = ExpandableController(initialExpanded: false);
    _model.expandableController8 = ExpandableController(initialExpanded: false);
    _model.expandableController9 = ExpandableController(initialExpanded: false);
    _model.expandableController10 =
        ExpandableController(initialExpanded: false);
    _model.expandableController11 =
        ExpandableController(initialExpanded: false);
    _model.expandableController12 =
        ExpandableController(initialExpanded: false);
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
          title: Text(
            '계절 산행',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0, 0),
                        child: TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                          FlutterFlowTheme.of(context).secondaryText,
                          labelStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          unselectedLabelStyle: TextStyle(),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          tabs: [
                            Tab(
                              text: '봄',
                            ),
                            Tab(
                              text: '여름',
                            ),
                            Tab(
                              text: '가을',
                            ),
                            Tab(
                              text: '겨울',
                            ),
                          ],
                          controller: _model.tabBarController,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/spring.jpg',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 15, 0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            child: ExpandableNotifier(
                                              controller:
                                              _model.expandableController1,
                                              child: ExpandablePanel(
                                                header: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 0, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .thermostat_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        size: 24,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: Text(
                                                          '기후 특징',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Roboto',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                collapsed: Text(
                                                  ' ',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Plus Jakarta Sans',
                                                    fontSize: 1,
                                                  ),
                                                ),
                                                expanded: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 10, 5, 10),
                                                  child: Text(
                                                    '3월~5월 봄철은 찬 공기가 물러나고, 남쪽의 따듯한 공기가 올라오면서 산에서 많은 기상 변화가 나타납니다. 날씨가 갑자기 서늘해질 수 있고, 고도가 높아지면 눈발이 휘날리거나 체감온도가 겨울만큼 낮게 느껴질 수 있습니다. 또한 음지에는 여전히 눈이 쌓인 곳이 많고 일몰 이후에는 녹던 눈과 얼음이 다시 얼어버리기 때문에 봄에 산행을 할 때는 눈과 얼음, 낙석에 주의해야 합니다.',
                                                    textAlign:
                                                    TextAlign.justify,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Roboto',
                                                    ),
                                                  ),
                                                ),
                                                theme: ExpandableThemeData(
                                                  tapHeaderToExpand: true,
                                                  tapBodyToExpand: false,
                                                  tapBodyToCollapse: false,
                                                  headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                                  hasIcon: true,
                                                  expandIcon: Icons
                                                      .keyboard_arrow_down_rounded,
                                                  collapseIcon: Icons
                                                      .keyboard_arrow_up_rounded,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          child: ExpandableNotifier(
                                            controller:
                                            _model.expandableController2,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .report_problem_rounded,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '주의사항',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              collapsed: Text(
                                                ' ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  fontSize: 1,
                                                ),
                                              ),
                                              expanded: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 10, 5, 10),
                                                child: Text(
                                                  'ㆍ 미끄럼 주의\n- 흙길: 눈이 녹거나 얼음이 녹아 질척거리는 산길은 미끄러짐이 심합니다.\n- 잔설과 얼음: 산은 4월까지도 응달이 지는 곳에는 눈이나 얼음이 녹지 않은 경우가 많습니다. 이런 구간은 보통 난이도가 있는 등산로일 가능성이 많기 때문에 주의해야 합니다.\n\nㆍ 낙석 주의\n들뜨거나 약해진 돌(바위) 낙석주의, 암릉 또는 암봉 등 돌이 많은 구간에서 조심해야 합니다. 겨울철 얼었던 지표면이 녹으면서 약해진 지반이 흙사태나 바윗길의 붕괴가 일어날 수 있으며, 철 계단 혹은 안전로프 등의 시설물이 파괴될 수 있습니다. 또한 등산로 주변의 나무나 풀들도 지반이 약해진 틈에 부러지거나 뽑힐 수 있어 잘못 잡으면 위험합니다.',
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                                hasIcon: true,
                                                expandIcon: Icons
                                                    .keyboard_arrow_down_rounded,
                                                collapseIcon: Icons
                                                    .keyboard_arrow_up_rounded,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          child: ExpandableNotifier(
                                            controller:
                                            _model.expandableController3,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.lightbulb_rounded,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '준비물',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              collapsed: Text(
                                                ' ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  fontSize: 1,
                                                ),
                                              ),
                                              expanded: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(12, 10,
                                                          5, 10),
                                                      child: Text(
                                                        'ㆍ 이른 봄은 일교차가 1년 중 가장 심한 시기이므로 보온 의류를 준비합니다.\nㆍ 봄철 산은 아직 잔설이 쌓여있거나 사람들이 밟고 지나간 눈은 빙판처럼 다져지기 때문에 아이젠(크램폰), 스패츠, 적당한 길이(약 10m)의 보조 로프를 준비합니다. 스패츠는 잔설이 쌓여있는 구간을 통과할 때 신발에 눈이 들어가는 것을 방지하고, 아이젠은 빙판길에 유용합니다.\nㆍ 봄에는 낙석이 자주 발생하므로 낙석 우발 지대를 피해서 등산 코스를 선정하고, 등산 중 바위지대를 지날 때는 각별한 주의가 필요합니다.',
                                                        textAlign:
                                                        TextAlign.justify,
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                                hasIcon: true,
                                                expandIcon: Icons
                                                    .keyboard_arrow_down_rounded,
                                                collapseIcon: Icons
                                                    .keyboard_arrow_up_rounded,
                                                iconSize: 24,
                                                iconColor: Color(0xFF777777),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/summer.jpg',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 15, 0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            child: ExpandableNotifier(
                                              controller:
                                              _model.expandableController4,
                                              child: ExpandablePanel(
                                                header: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 0, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .thermostat_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        size: 24,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: Text(
                                                          '기후 특징',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Roboto',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                collapsed: Text(
                                                  ' ',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Plus Jakarta Sans',
                                                    fontSize: 1,
                                                  ),
                                                ),
                                                expanded: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 10, 5, 10),
                                                  child: Text(
                                                    '6월~8월 여름철은 장마로 인한 폭우와 갑작스러운 소나기가 빈번한 계절이기 때문에 등산 전에 일기 예보를 확인하여 기상 상태에 따라 등산을 계획해야 합니다. 등산 중 갑작스러운 폭우나 소나기가 내릴 경우, 계곡 주변부를 지날 때 주의하며 무리한 계곡 횡단은 자제해야 합니다.',
                                                    textAlign:
                                                    TextAlign.justify,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Roboto',
                                                    ),
                                                  ),
                                                ),
                                                theme: ExpandableThemeData(
                                                  tapHeaderToExpand: true,
                                                  tapBodyToExpand: false,
                                                  tapBodyToCollapse: false,
                                                  headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                                  hasIcon: true,
                                                  expandIcon: Icons
                                                      .keyboard_arrow_down_rounded,
                                                  collapseIcon: Icons
                                                      .keyboard_arrow_up_rounded,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          child: ExpandableNotifier(
                                            controller:
                                            _model.expandableController5,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .report_problem_rounded,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '주의사항',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              collapsed: Text(
                                                ' ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  fontSize: 1,
                                                ),
                                              ),
                                              expanded: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 10, 5, 10),
                                                child: Text(
                                                  'ㆍ 탈수, 일사, 열사 증상 주의\n체온 유지 체계의 부조화로 발생하는 일사병은 한낮 장시간 햇볕에 노출되어 외부로부터 받은 열을 제대로 내보내지 못해 발생합니다.\n또한, 한여름 산행에서 땀을 너무 많이 흘리면 체내 염분이 고갈되고 근육의 과용으로 통증이 유발될 수 있습니다. 통증의 정도는 크지 않지만 피로, 두통, 구토, 멀미, 맥박 수 증가 등이 관련된 증후이며 체온이 40°C까지 올라갈 수 있습니다. 얼굴이 창백해지고 어지러운 증상이 나타나거나 마치 감기에 걸린 듯한 증상이 유발되는 것도 관련된 증후입니다.\n주로 직사광선이나 복사열이 열의 원천입니다. 이런 증세가 발생하였을 때는 우선 시원한 그늘에서 쉬며 물을 마셔 빼앗긴 수분을 보충해 주어야 합니다. 냉수로 과열된 몸을 식혀준 후 소금물을 마시는 것도 도움이 됩니다. 이때, 환자의 옷을 벗기거나 느슨하게 풀어주어야 하며 피부에 물을 뿌려 몸을 식혀주어야 합니다. 신속하게 체온을 낮춰주는 것도 효과적입니다.\n\nㆍ 기상 상태 급변 주의\n대기가 불안정한 여름철에는 갑작스러운 소나기가 내리거나 낙뢰가 발생할 수 있습니다. 산행 중 비가 내리면 계곡 산행을 피하고, 특히 폭우로 계곡물이 불어나 급류로 바뀌었을 때는 절대 건너지 말아야 합니다. 낙뢰가 치면 나무와 바위 등 주변의 높이 솟아있는 곳을 피하고, 낮은 곳이나 움푹하게 팬 곳으로 대피해야 합니다.',
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                                hasIcon: true,
                                                expandIcon: Icons
                                                    .keyboard_arrow_down_rounded,
                                                collapseIcon: Icons
                                                    .keyboard_arrow_up_rounded,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          child: ExpandableNotifier(
                                            controller:
                                            _model.expandableController6,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.lightbulb_rounded,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '준비물',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              collapsed: Text(
                                                ' ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  fontSize: 1,
                                                ),
                                              ),
                                              expanded: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(12, 10,
                                                          5, 10),
                                                      child: Text(
                                                        'ㆍ 우천 시 등산 요령을 숙지하고 비 예보가 없더라도 여름철 산행에는 배낭 커버를 준비하는 것이 기본입니다. 산에서 비를 맞게 되면 체온이 떨어질 수 있으므로 방수의류나 여벌옷을 준비합니다.\nㆍ 물을 준비하고 조금씩 자주 마셔 탈수를 방지합니다.\nㆍ 여름철에는 등산 식량이 부패하기 쉽기 때문에 보관하기 쉬운 음식으로 준비하고, 식중독 사고에 철저히 대비해야 합니다.\nㆍ 일반적으로 여름철 산에서 비가 올 경우 2~3시간 내에 계곡물이 모두 하류로 빠져나가게 됩니다. 계곡물이 무릎까지만 오더라도 계곡 양쪽에 안전 로프를 설치한 후 계곡을 건너야 합니다. 만약 계곡물이 허벅지까지 온다면 건너지 말고 수위가 낮아지기를 기다리거나 계곡 상류로 이동하여 건너는 것이 안전합니다.',
                                                        textAlign:
                                                        TextAlign.justify,
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                                hasIcon: true,
                                                expandIcon: Icons
                                                    .keyboard_arrow_down_rounded,
                                                collapseIcon: Icons
                                                    .keyboard_arrow_up_rounded,
                                                iconSize: 24,
                                                iconColor: Color(0xFF777777),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/fall.jpg',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 15, 0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            child: ExpandableNotifier(
                                              controller:
                                              _model.expandableController7,
                                              child: ExpandablePanel(
                                                header: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 0, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .thermostat_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        size: 24,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: Text(
                                                          '기후 특징',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Roboto',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                collapsed: Text(
                                                  ' ',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Plus Jakarta Sans',
                                                    fontSize: 1,
                                                  ),
                                                ),
                                                expanded: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 10, 5, 10),
                                                  child: Text(
                                                    '9월~11월 가을철은 날씨가 좋아 등산을 많이 다니는 계절입니다. 가을철에는 단풍 때문에 초보자들도 산행을 나서게 되는 경우가 많은데, 가을철 등산에도 많은 주의가 필요합니다. 추분을 기점으로 해가 짧아지기 때문에 10월 중순쯤에는 18시 전후로 해가지기 시작합니다. 해가 진 이후에는 급격히 기온이 떨어지고 차가운 바람이 부는 등의 기후 변화가 있으므로 이에 대비하여 등산을 해야 합니다.',
                                                    textAlign:
                                                    TextAlign.justify,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Roboto',
                                                    ),
                                                  ),
                                                ),
                                                theme: ExpandableThemeData(
                                                  tapHeaderToExpand: true,
                                                  tapBodyToExpand: false,
                                                  tapBodyToCollapse: false,
                                                  headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                                  hasIcon: true,
                                                  expandIcon: Icons
                                                      .keyboard_arrow_down_rounded,
                                                  collapseIcon: Icons
                                                      .keyboard_arrow_up_rounded,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          child: ExpandableNotifier(
                                            controller:
                                            _model.expandableController8,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .report_problem_rounded,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '주의사항',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              collapsed: Text(
                                                ' ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  fontSize: 1,
                                                ),
                                              ),
                                              expanded: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 10, 5, 10),
                                                child: Text(
                                                  'ㆍ 일교차 주의\n가을 산행 시 한낮과 밤의 온도차가 극심하므로 세심한 대비가 필요합니다. 한낮에는 얇고 가벼운 옷을, 또 해가 졌을 때를 대비해 두터운 겨울옷을 준비해야 합니다. 사전에 기상 정보를 확인하는 것은 필수이며 비나 강풍 등이 예보된 날에는 산행을 자제하는 것이 좋습니다.\n\nㆍ 미끄럼 주의\n등산객 사고 중 넘어지거나 발을 헛디디는 일이 잦습니다. 특히나 가을철 산행은 새벽이슬과 낙엽 등이 미끄러워 바위 등에서 넘어질 수 있으므로 각별한 주의가 필요합니다. 산행 전 허리, 발목, 무릎 등 충분한 관절 스트레칭과 함께 알맞은 등산복과 등산화 등을 착용해야 합니다.\n\nㆍ 쯔쯔가무시병 감염 주의\n가을에 발생 빈도가 높은 것으로 알려진 쯔쯔가무시병은 털 진드기에 의해 발생하는 급성 열성 질환입니다. 고열 및 오한, 검은 딱지 등을 유발하며, 백신이 없고 재감염이 쉬워 예방이 중요합니다. 긴팔 옷을 착용하고 풀밭, 나무 기둥 등에 피부가 닿지 않게 주의하는 것이 좋습니다.\n\nㆍ 일찍 등산하고 일몰 전 하산하기\n가을 산에서는 이른 아침 산행을 시작해 일몰 전에 하산하는 것이 좋습니다. 이는 산행에 익숙하지 않은 초보 등산객일수록 명심해야 합니다. 가을철은 상대적으로 낮의 길이가 짧고 밤이 길어지므로 기온이 낮은 계곡이나 숲속에서 일몰 후 허둥대며 행동하는 것은 위험합니다.',
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                                hasIcon: true,
                                                expandIcon: Icons
                                                    .keyboard_arrow_down_rounded,
                                                collapseIcon: Icons
                                                    .keyboard_arrow_up_rounded,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          child: ExpandableNotifier(
                                            controller:
                                            _model.expandableController9,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.lightbulb_rounded,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '준비물',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              collapsed: Text(
                                                ' ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  fontSize: 1,
                                                ),
                                              ),
                                              expanded: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(12, 10,
                                                          5, 10),
                                                      child: Text(
                                                        'ㆍ 평균 일교차 10도 이상인 가을철은 추위, 더위에 대비할 수 있도록 얇은 옷을 여러 겹 입어 체온을 조절할 수 있도록 하는 것이 좋습니다.\nㆍ 낙엽으로 인한 미끄럼 사고를 방지하고 발목을 보호할 수 있도록 등산화를 착용하는 것이 좋습니다.\nㆍ 야생 진드기 감염 사고를 대비하여 노출을 피하고, 기피제를 뿌리는 것이 좋습니다. 또한 산행 중 휴식을 취할 때는 돗자리나 방석을 깔고 앉는 것이 진드기 감염 사고를 예방하는 데에 효과적입니다.',
                                                        textAlign:
                                                        TextAlign.justify,
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                                hasIcon: true,
                                                expandIcon: Icons
                                                    .keyboard_arrow_down_rounded,
                                                collapseIcon: Icons
                                                    .keyboard_arrow_up_rounded,
                                                iconSize: 24,
                                                iconColor: Color(0xFF777777),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/winter.jpg',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 15, 0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            child: ExpandableNotifier(
                                              controller:
                                              _model.expandableController10,
                                              child: ExpandablePanel(
                                                header: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 0, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .thermostat_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        size: 24,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            5, 0, 0, 0),
                                                        child: Text(
                                                          '기후 특징',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Roboto',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                collapsed: Text(
                                                  ' ',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Plus Jakarta Sans',
                                                    fontSize: 1,
                                                  ),
                                                ),
                                                expanded: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 10, 5, 10),
                                                  child: Text(
                                                    '12월~2월 겨울철은 낮은 기온과 눈, 얼음과 같은 위험 요소가 있기 때문에 등산 장비나 준비물을 철저하게 챙겨야 합니다. 초겨울 산행은 가을 산행과 비슷하게 준비해도 되지만, 1월~2월에 눈이 많이 내리고 쌓인 눈으로 인해 등산에 어려움이 많기 때문에 사전 준비가 중요합니다.',
                                                    textAlign:
                                                    TextAlign.justify,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Roboto',
                                                    ),
                                                  ),
                                                ),
                                                theme: ExpandableThemeData(
                                                  tapHeaderToExpand: true,
                                                  tapBodyToExpand: false,
                                                  tapBodyToCollapse: false,
                                                  headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                                  hasIcon: true,
                                                  expandIcon: Icons
                                                      .keyboard_arrow_down_rounded,
                                                  collapseIcon: Icons
                                                      .keyboard_arrow_up_rounded,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          child: ExpandableNotifier(
                                            controller:
                                            _model.expandableController11,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .report_problem_rounded,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '주의사항',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              collapsed: Text(
                                                ' ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  fontSize: 1,
                                                ),
                                              ),
                                              expanded: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 10, 5, 10),
                                                child: Text(
                                                  'ㆍ 저체온증 주의\n겨울철 등산 시 저체온증 혹은 동상의 위험이 높기 때문에 방한 장비를 착용해야 합니다. 두꺼운 옷 한 벌보다는 얇은 기능성 보온 의류를 여러 겹 겹쳐 입어 추위로부터 보호하는 것이 좋습니다. 또한, 중간에 땀이 식으면서 체온도 함께 떨어질 수 있기 때문에 땀을 잘 흡수할 수 있는 소재의 옷을 입는 것이 좋습니다. 장갑, 양말 등 눈에 의해 젖기 쉬운 물품은 여분을 준비하여 젖을 때마다 갈아주는 것이 좋으며, 스패츠를 착용하여 동상 위험을 막는 것도 효과적입니다.\n\nㆍ 미끄럼 주의\n겨울철 산은 눈이 내리지 않아도 해가 들어오지 않는 부분에는 얼음이나 눈이 쌓인 곳이 많습니다. 미끄럼 사고를 방지할 수 있도록 아이젠을 필수로 착용하고, 등산 스틱을 지참하는 것이 좋습니다.\n\nㆍ 하산 시 항상 주의\n일몰 시간을 잘 확인하고, 일몰 두 시간 전까지 하산하는 것이 좋습니다. 또한, 하산할 때 발목에 실리는 체중은 평소의 3~5배로 추위에 경직된 근육에 위험할 수 있습니다. 경사가 급할수록 천천히 보폭 좁혀 충격을 줄이며 하산하는 것이 좋습니다.',
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                                hasIcon: true,
                                                expandIcon: Icons
                                                    .keyboard_arrow_down_rounded,
                                                collapseIcon: Icons
                                                    .keyboard_arrow_up_rounded,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          child: ExpandableNotifier(
                                            controller:
                                            _model.expandableController12,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 5),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.lightbulb_rounded,
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '준비물',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              collapsed: Text(
                                                ' ',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Plus Jakarta Sans',
                                                  fontSize: 1,
                                                ),
                                              ),
                                              expanded: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(12, 10,
                                                          5, 10),
                                                      child: Text(
                                                        'ㆍ 겨울철 등산은 추위와 눈 때문에 극한 환경을 견딜 수 있는 등산 장갑, 등산 양말, 등산화, 등산 모자, 바람막이, 방수 바지 등 완벽한 복장을 갖추어야 합니다.\nㆍ 스패츠와 아이젠, 등산 스틱을 준비하고 등산화에는 등산 2~3일 전에 방수액을 충분히 발라주어야 합니다.\nㆍ 아이젠은 4발, 6발, 8발, 12발 등 다양한 제품이 있지만 보통 4발짜리가 무난하며 등산 스틱은 반드시 두 개를 함께 사용하도록 합니다. 추가로, 등산 스틱 끝에 바스켓을 달면 푹푹 빠지는 눈길에서 도움이 됩니다.',
                                                        textAlign:
                                                        TextAlign.justify,
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Roboto',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                                hasIcon: true,
                                                expandIcon: Icons
                                                    .keyboard_arrow_down_rounded,
                                                collapseIcon: Icons
                                                    .keyboard_arrow_up_rounded,
                                                iconSize: 24,
                                                iconColor: Color(0xFF777777),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}