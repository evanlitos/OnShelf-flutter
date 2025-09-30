import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/alient_product_confirm_copy_widget.dart';
import '/components/alient_product_confirm_widget.dart';
import '/components/menulateral_widget.dart';
import '/components/product_in_backdoor_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/alerts/success/success_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rep6_scanproducts_model.dart';
export 'rep6_scanproducts_model.dart';

class Rep6ScanproductsWidget extends StatefulWidget {
  const Rep6ScanproductsWidget({
    super.key,
    required this.aFoto,
    required this.bFoto,
  });

  final FFUploadedFile? aFoto;
  final FFUploadedFile? bFoto;

  static String routeName = 'REP6_SCANPRODUCTS';
  static String routePath = '/rep6Scanproducts';

  @override
  State<Rep6ScanproductsWidget> createState() => _Rep6ScanproductsWidgetState();
}

class _Rep6ScanproductsWidgetState extends State<Rep6ScanproductsWidget> {
  late Rep6ScanproductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Rep6ScanproductsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {});
    });

    _model.sinputSkuTextController ??= TextEditingController();
    _model.sinputSkuFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.menulateralModel,
            updateCallback: () => safeSetState(() {}),
            child: MenulateralWidget(),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 66.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF0B2D4F),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            scaffoldKey.currentState!
                                                .openDrawer();
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/Group_7346.png',
                                              width: 22.0,
                                              height: 17.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Icon(
                                          FFIcons.kic2,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '6- Top up',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.hankenGrotesk(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Group_7341.png',
                                          width: 23.0,
                                          height: 23.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Name:${FFAppState().user.user.name}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .hankenGrotesk(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'OnShelf ID:${FFAppState().user.user.id.toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .hankenGrotesk(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
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
              Expanded(
                child: Builder(
                  builder: (context) {
                    final items = FFAppState().productListTopUp.toList();
                    if (items.isEmpty) {
                      return Center(
                        child: Image.asset(
                          'assets/images/Group_7736.png',
                          width: 230.0,
                          fit: BoxFit.contain,
                        ),
                      );
                    }

                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: items.length,
                      separatorBuilder: (_, __) => SizedBox(height: 10.0),
                      itemBuilder: (context, itemsIndex) {
                        final itemsItem = items[itemsIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F9FB),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Container(
                                          width: 77.0,
                                          height: 77.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 2.0, 2.0, 2.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                getJsonField(
                                                  itemsItem.toMap(),
                                                  r'''$.img''',
                                                ).toString(),
                                                width: 200.0,
                                                height: 200.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      itemsItem.name,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .hankenGrotesk(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                  ))
                                                    Text(
                                                      'SKU :  ${itemsItem.sku}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .hankenGrotesk(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'No. Planogram: ${FFAppState().toShelfSelected.planogramName}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .hankenGrotesk(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          REP7FillProductWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'itemIndex':
                                                                serializeParam(
                                                              itemsIndex,
                                                              ParamType.int,
                                                            ),
                                                            'product':
                                                                serializeParam(
                                                              itemsItem,
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                          }.withoutNulls,
                                                        );

                                                        FFAppState()
                                                            .updateShelfSelectedStruct(
                                                          (e) => e
                                                            ..updateProducts(
                                                              (e) => e[
                                                                  itemsIndex]
                                                                ..startedAt =
                                                                    functions
                                                                        .obtenerFechaHoraActual(),
                                                            ),
                                                        );
                                                        safeSetState(() {});
                                                      },
                                                      text:
                                                          'FILL FACE UP AND DATA',
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .hankenGrotesk(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 122.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                child:
                                                    FlutterFlowExpandedImageView(
                                                  image: Image.network(
                                                    functions.imagePathFromUrl(
                                                        FFAppState()
                                                            .toShelfSelected
                                                            .planogramImg),
                                                    fit: BoxFit.contain,
                                                  ),
                                                  allowRotation: false,
                                                  tag: functions
                                                      .imagePathFromUrl(
                                                          FFAppState()
                                                              .toShelfSelected
                                                              .planogramImg),
                                                  useHeroAnimation: true,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Hero(
                                            tag: functions.imagePathFromUrl(
                                                FFAppState()
                                                    .toShelfSelected
                                                    .planogramImg),
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                functions.imagePathFromUrl(
                                                    FFAppState()
                                                        .toShelfSelected
                                                        .planogramImg),
                                                width: 40.0,
                                                height: 40.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFAppState().toShelfSelected.name,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.hankenGrotesk(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Builder(
                                  builder: (context) => Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().topup = true;
                                        safeSetState(() {});
                                        _model.updateShipSendStruct(
                                          (e) => e
                                            ..productsMerchaiser = FFAppState()
                                                .productListTopUp
                                                .toList()
                                            ..productsErp = FFAppState()
                                                .toShelfSelected
                                                .products
                                                .toList(),
                                        );
                                        safeSetState(() {});
                                        await actions.logAction(
                                          _model.shipSend!.toMap(),
                                        );
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: SuccessWidget(
                                                  actionShip: () async {
                                                    _model.validateProducts =
                                                        await ApiShelfGroup
                                                            .validateProductsCall
                                                            .call(
                                                      bodyJson: _model.shipSend
                                                          ?.toMap(),
                                                      toKen: FFAppState()
                                                          .user
                                                          .token,
                                                    );

                                                    await actions.logAction(
                                                      (_model.validateProducts
                                                              ?.jsonBody ??
                                                          ''),
                                                    );
                                                    await actions.logAction(
                                                      <String, String?>{
                                                        'lleego': 'aqui',
                                                      },
                                                    );
                                                    if ((_model.validateProducts
                                                            ?.succeeded ??
                                                        true)) {
                                                      await actions.logAction(
                                                        <String, String?>{
                                                          'lleego':
                                                              'Si Success',
                                                        },
                                                      );
                                                      if (functions.hasBackdoorProduct(
                                                              (_model.validateProducts
                                                                      ?.jsonBody ??
                                                                  '')) ==
                                                          false) {
                                                        await actions.logAction(
                                                          getJsonField(
                                                            (_model.validateProducts
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.products''',
                                                          ),
                                                        );
                                                        FFAppState()
                                                            .updateStartShelfStruct(
                                                          (e) => e
                                                            ..finishedAt = functions
                                                                .obtenerFechaHoraActual()
                                                            ..products = ((_model
                                                                            .validateProducts
                                                                            ?.jsonBody ??
                                                                        '')
                                                                    .toList()
                                                                    .map<ProductsStruct?>(
                                                                        ProductsStruct
                                                                            .maybeFromMap)
                                                                    .toList() as Iterable<ProductsStruct?>)
                                                                .withoutNulls
                                                                .toList()
                                                            ..imgTodayPlanogram =
                                                                FFAppState()
                                                                    .toShelfSelected
                                                                    .planogramImg
                                                            ..merchandizerId =
                                                                FFAppState()
                                                                    .user
                                                                    .user
                                                                    .id
                                                            ..planogramId =
                                                                FFAppState()
                                                                    .toShelfSelected
                                                                    .planogramId
                                                            ..mapCanvaId =
                                                                FFAppState()
                                                                    .toShelfSelected
                                                                    .mapCanvaId
                                                            ..startedAt = functions
                                                                .obtenerFechaHoraActual()
                                                            ..storeId = 2
                                                            ..imgMainShelfBefore =
                                                                'NA'
                                                            ..imgMainShelfAfter =
                                                                'NA',
                                                        );
                                                        safeSetState(() {});
                                                        await actions.logAction(
                                                          <String, String?>{
                                                            'lleego':
                                                                'Si Success',
                                                          },
                                                        );
                                                        await actions.logAction(
                                                          FFAppState()
                                                              .startShelf
                                                              .toMap(),
                                                        );
                                                        await actions.logAction(
                                                          <String, String?>{
                                                            'lleego':
                                                                'Conversion',
                                                          },
                                                        );
                                                        await actions.logAction(
                                                          FFAppState()
                                                              .startShelf
                                                              .toMap(),
                                                        );
                                                        _model.resSendShip =
                                                            await ApiShelfGroup
                                                                .shipShelfCall
                                                                .call(
                                                          token: FFAppState()
                                                              .user
                                                              .token,
                                                          bodyJson: FFAppState()
                                                              .startShelf
                                                              .toMap(),
                                                        );

                                                        await actions.logAction(
                                                          (_model.resSendShip
                                                                  ?.jsonBody ??
                                                              ''),
                                                        );
                                                        if ((_model.resSendShip
                                                                ?.succeeded ??
                                                            true)) {
                                                          await actions
                                                              .logAction(
                                                            (_model.resSendShip
                                                                    ?.jsonBody ??
                                                                ''),
                                                          );
                                                          _model.sendPhotos =
                                                              await ApiShelfGroup
                                                                  .sendPhotosCall
                                                                  .call(
                                                            imgMainShelfBefore:
                                                                widget.bFoto,
                                                            imgMainShelfAfter:
                                                                widget.aFoto,
                                                            toKen: FFAppState()
                                                                .user
                                                                .token,
                                                            token: FFAppState()
                                                                .user
                                                                .token,
                                                            idSend: ResponseRegisterRouteStruct
                                                                    .maybeFromMap(
                                                                        (_model.resSendShip?.jsonBody ??
                                                                            ''))
                                                                ?.id,
                                                          );

                                                          await actions
                                                              .logAction(
                                                            (_model.sendPhotos
                                                                    ?.jsonBody ??
                                                                ''),
                                                          );
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Error'),
                                                                content: Text(
                                                                    'error'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        }
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child:
                                                                    ProductInBackdoorWidget(
                                                                  products: functions
                                                                      .getBackdoorProductName((_model
                                                                              .validateProducts
                                                                              ?.jsonBody ??
                                                                          '')),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }
                                                    } else {
                                                      await actions.logAction(
                                                        <String, String?>{
                                                          'lleego':
                                                              'No Succeds',
                                                        },
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        );

                                        safeSetState(() {});
                                      },
                                      text: 'Submit',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.hankenGrotesk(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    children: [
                                      Container(
                                        width: 270.0,
                                        child: TextFormField(
                                          controller:
                                              _model.sinputSkuTextController,
                                          focusNode: _model.sinputSkuFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                              font: GoogleFonts.hankenGrotesk(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                              shadows: [
                                                Shadow(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  offset: Offset(2.0, 2.0),
                                                  blurRadius: 2.0,
                                                )
                                              ],
                                            ),
                                            hintText: 'SKU',
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  font:
                                                      GoogleFonts.hankenGrotesk(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFFBABABA),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xAAE1E1E1),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.hankenGrotesk(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .sinputSkuTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                width: 1.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Builder(
                                              builder: (context) =>
                                                  FlutterFlowIconButton(
                                                borderRadius: 8.0,
                                                buttonSize: 40.0,
                                                fillColor: Color(0xFFE3F5FF),
                                                icon: Icon(
                                                  FFIcons.kzoomIn,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 14.0,
                                                ),
                                                onPressed: () async {
                                                  var _shouldSetState = false;
                                                  if (_model.sinputSkuTextController
                                                              .text !=
                                                          '') {
                                                    _model.resultadoSKU =
                                                        await ApiShelfGroup
                                                            .searchProductCall
                                                            .call(
                                                      token: FFAppState()
                                                          .user
                                                          .token,
                                                      sku: _model
                                                          .sinputSkuTextController
                                                          .text,
                                                    );

                                                    _shouldSetState = true;
                                                    if (functions.isAlienOrNot(
                                                        FFAppState()
                                                            .toShelfSelected
                                                            .toMap(),
                                                        _model
                                                            .sinputSkuTextController
                                                            .text)) {
                                                      if ((_model.resultadoSKU
                                                              ?.succeeded ??
                                                          true)) {
                                                        if (ProductsStruct.maybeFromMap((_model
                                                                        .resultadoSKU
                                                                        ?.jsonBody ??
                                                                    ''))
                                                                ?.notFound ==
                                                            false) {
                                                          _model.addToProductsList(
                                                              ProductsStruct
                                                                  .maybeFromMap((_model
                                                                          .resultadoSKU
                                                                          ?.jsonBody ??
                                                                      ''))!);
                                                          safeSetState(() {});
                                                          FFAppState().addToProductListTopUp(
                                                              ProductsStruct
                                                                  .maybeFromMap((_model
                                                                          .resultadoSKU
                                                                          ?.jsonBody ??
                                                                      ''))!);
                                                          safeSetState(() {});
                                                          safeSetState(() {
                                                            _model
                                                                .sinputSkuTextController
                                                                ?.clear();
                                                          });
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Not found'),
                                                                content: Text(
                                                                    'Product not found'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }
                                                      } else {
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child:
                                                                  AlientProductConfirmCopyWidget(
                                                                products: ProductsStruct
                                                                    .maybeFromMap((_model
                                                                            .resultadoSKU
                                                                            ?.jsonBody ??
                                                                        '')),
                                                                test: () async {
                                                                  Navigator.pop(
                                                                      context);
                                                                  FFAppState().addToProductListTopUp(
                                                                      ProductsStruct.maybeFromMap((_model
                                                                              .resultadoSKU
                                                                              ?.jsonBody ??
                                                                          ''))!);
                                                                  safeSetState(
                                                                      () {});
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .sinputSkuTextController
                                                                        ?.clear();
                                                                  });

                                                                  context.pushNamed(
                                                                      InstructionsAlienProductWidget
                                                                          .routeName);
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text('Error'),
                                                          content: Text(
                                                              'Scan product'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Builder(
                                    builder: (context) => FFButtonWidget(
                                      onPressed: () async {
                                        var _shouldSetState = false;
                                        _model.barcode3 =
                                            await FlutterBarcodeScanner
                                                .scanBarcode(
                                          '#C62828', // scanning line color
                                          'Cancel', // cancel button text
                                          true, // whether to show the flash icon
                                          ScanMode.QR,
                                        );

                                        _shouldSetState = true;
                                        safeSetState(() {
                                          _model.sinputSkuTextController?.text =
                                              _model.barcode3;
                                        });
                                        if (_model.sinputSkuTextController
                                                    .text !=
                                                '') {
                                          _model.resultadoSKU3 =
                                              await ApiShelfGroup
                                                  .searchProductCall
                                                  .call(
                                            token: FFAppState().user.token,
                                            sku: _model.barcode3,
                                          );

                                          _shouldSetState = true;
                                          if (functions.isAlienOrNot(
                                              FFAppState()
                                                  .toShelfSelected
                                                  .toMap(),
                                              _model.sinputSkuTextController
                                                  .text)) {
                                            if ((_model
                                                    .resultadoSKU3?.succeeded ??
                                                true)) {
                                              if (ProductsStruct.maybeFromMap(
                                                          (_model.resultadoSKU3
                                                                  ?.jsonBody ??
                                                              ''))
                                                      ?.notFound ==
                                                  false) {
                                                _model.addToProductsList(
                                                    ProductsStruct.maybeFromMap(
                                                        (_model.resultadoSKU3
                                                                ?.jsonBody ??
                                                            ''))!);
                                                safeSetState(() {});
                                                FFAppState().addToProductListTopUp(
                                                    ProductsStruct.maybeFromMap(
                                                        (_model.resultadoSKU3
                                                                ?.jsonBody ??
                                                            ''))!);
                                                safeSetState(() {});
                                                safeSetState(() {
                                                  _model.sinputSkuTextController
                                                      ?.clear();
                                                });
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Not found'),
                                                      content: Text(
                                                          'Product not found'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                            } else {
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                          } else {
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Out of Planogram?'),
                                                          content: Text(
                                                              'This product is not listed on the shelf, it will be inserted as an Out Of Planogram. Do you want to continue?'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      false),
                                                              child: Text(
                                                                  'Cancel'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      true),
                                                              child: Text(
                                                                  'Confirm'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ) ??
                                                    false;
                                            if (confirmDialogResponse) {
                                              if ((_model.resultadoSKU3
                                                      ?.succeeded ??
                                                  true)) {
                                                if (ProductsStruct.maybeFromMap(
                                                            (_model.resultadoSKU3
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.notFound ==
                                                    false) {
                                                  FFAppState()
                                                      .addToProductListTopUp(
                                                          ProductsStruct(
                                                    id: ProductsStruct
                                                            .maybeFromMap((_model
                                                                    .resultadoSKU3
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.id,
                                                    productId: ProductsStruct
                                                            .maybeFromMap((_model
                                                                    .resultadoSKU3
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.productId,
                                                    name: ProductsStruct
                                                            .maybeFromMap((_model
                                                                    .resultadoSKU3
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.name,
                                                    img: ProductsStruct
                                                            .maybeFromMap((_model
                                                                    .resultadoSKU3
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.img,
                                                    upc: ProductsStruct
                                                            .maybeFromMap((_model
                                                                    .resultadoSKU3
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.upc,
                                                    outOfPlanogram: 1,
                                                  ));
                                                  safeSetState(() {});
                                                  safeSetState(() {
                                                    _model
                                                        .sinputSkuTextController
                                                        ?.clear();
                                                  });
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              AlientProductConfirmWidget(
                                                            products:
                                                                ProductsStruct(
                                                              name: _model
                                                                  .barcode3,
                                                              sku: _model
                                                                  .barcode3,
                                                              upc: _model
                                                                  .barcode3,
                                                              category1: '1',
                                                              category2: '2',
                                                              category3: '3',
                                                              isAlien: 1,
                                                              height: 10.0,
                                                              width: 5.0,
                                                              depth: 5.0,
                                                            ),
                                                            test: () async {
                                                              _model.apiResultsrc =
                                                                  await ApiShelfGroup
                                                                      .createProductCall
                                                                      .call(
                                                                productJson: <String,
                                                                    dynamic>{
                                                                  'upc': _model
                                                                      .barcode3,
                                                                  'sku': _model
                                                                      .barcode3,
                                                                  'name': _model
                                                                      .barcode3,
                                                                  'category_1':
                                                                      _model
                                                                          .barcode3,
                                                                  'category_2':
                                                                      _model
                                                                          .barcode3,
                                                                  'category_3':
                                                                      _model
                                                                          .barcode3,
                                                                  'width': '5',
                                                                  'height': '5',
                                                                  'depth': '5',
                                                                  'status':
                                                                      'Active',
                                                                  'vendor':
                                                                      'Pending',
                                                                  'img':
                                                                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA8AAAAJjCAYAAADDKXhvAAAAAXNSR0IArs4c6QAAIABJREFUeF7t3XmUXVWd6PFfBknMQMKMIGEe2sTwHoh26xOJr5GpW2kcaF9jGkW0QYZODIpETJAO2BF4YtNIg4BMb2CBTK95jOLUKrTgExNslDCZYBIiGQikEmp4615WYlIJqZtT51SdXftTa/UfJvecu/fnt',
                                                                },
                                                                toKen:
                                                                    FFAppState()
                                                                        .user
                                                                        .token,
                                                              );

                                                              _model.searcchNewAlien =
                                                                  await ApiShelfGroup
                                                                      .searchProductCall
                                                                      .call(
                                                                sku: _model
                                                                    .barcode3,
                                                                toKen:
                                                                    FFAppState()
                                                                        .user
                                                                        .token,
                                                                token:
                                                                    FFAppState()
                                                                        .user
                                                                        .token,
                                                              );

                                                              FFAppState().addToProductListTopUp(
                                                                  ProductsStruct
                                                                      .maybeFromMap((_model
                                                                              .searcchNewAlien
                                                                              ?.jsonBody ??
                                                                          ''))!);
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                              } else {
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                            }
                                          }
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Error'),
                                                content: Text('Scan product'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                      text: '',
                                      icon: Icon(
                                        FFIcons.kseachCamera,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            26.0, 0.0, 26.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.hankenGrotesk(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
