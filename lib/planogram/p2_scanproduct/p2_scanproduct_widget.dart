import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_alert_text1btn_widget.dart';
import '/components/menulateral_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'p2_scanproduct_model.dart';
export 'p2_scanproduct_model.dart';

class P2ScanproductWidget extends StatefulWidget {
  const P2ScanproductWidget({
    super.key,
    required this.shelfWidthCM,
    required this.shelfHeightCM,
    required this.numRows,
    required this.shelfDepthCM,
    required this.nameShelf,
    this.retailerName,
  });

  final int? shelfWidthCM;
  final int? shelfHeightCM;
  final int? numRows;
  final int? shelfDepthCM;
  final String? nameShelf;
  final String? retailerName;

  static String routeName = 'P2_SCANPRODUCT';
  static String routePath = '/p2Scanproduct';

  @override
  State<P2ScanproductWidget> createState() => _P2ScanproductWidgetState();
}

class _P2ScanproductWidgetState extends State<P2ScanproductWidget> {
  late P2ScanproductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => P2ScanproductModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.inactivitymanager(
        context,
      );
      FFAppState().beforPhoto = '';
      FFAppState().ShelfSelected = ShelfsStruct();
      FFAppState().ShelfSelectedIndex = 0;
      FFAppState().toShelfSelected = ShelfsStruct();
      FFAppState().startShelf = SendItemsShelfStruct();
      FFAppState().update(() {});
      while (_model.loop < ((widget.numRows!) - 1)) {
        _model.addToRows(ListProductsStruct());
        _model.loop = _model.loop + 1;
        safeSetState(() {});
      }
      _model.addToRows(ListProductsStruct());
      safeSetState(() {});
      if (!(FFAppState().rowUpdateData == null)) {
        FFAppState().rowUpdateData = ProductListRowStruct();
        safeSetState(() {});
      }
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
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: Icon(
                                          FFIcons.knewIcon1,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                      Text(
                                        'Home',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.hankenGrotesk(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
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
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Name: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  widget.retailerName!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
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
                                  'Height: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  '${widget.shelfHeightCM?.toString()} cm.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
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
                                  'Width: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  '${_model.widthDisponibleRowActual.toString()}/${widget.shelfWidthCM?.toString()} cm.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
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
                                  'Depth: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  '${widget.shelfDepthCM?.toString()} cm.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
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
                                  'Row Edit: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  '${_model.rowEdit.toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.hankenGrotesk(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
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
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final testRows =
                              functions.buildRowList(widget.numRows!).toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: testRows.length,
                            itemBuilder: (context, testRowsIndex) {
                              final testRowsItem = testRows[testRowsIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await actions.inactivitymanager(
                                    context,
                                  );
                                  _model.rowEdit = testRowsIndex;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final products = _model.rows
                                                .elementAtOrNull(testRowsIndex)
                                                ?.products
                                                .toList() ??
                                            [];

                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await actions.inactivitymanager(
                                              context,
                                            );
                                            _model.rowEdit = testRowsIndex;
                                            safeSetState(() {});
                                          },
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children:
                                                  List.generate(products.length,
                                                      (productsIndex) {
                                                final productsItem =
                                                    products[productsIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 2.0, 2.0, 2.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await actions
                                                          .inactivitymanager(
                                                        context,
                                                      );
                                                      _model.edit = true;
                                                      _model.productEdit =
                                                          productsItem;
                                                      _model.pXEdit =
                                                          productsIndex;
                                                      _model.pYEdit =
                                                          testRowsIndex;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        EditnewplanWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'product':
                                                              serializeParam(
                                                            productsItem,
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'pX': serializeParam(
                                                            productsIndex,
                                                            ParamType.int,
                                                          ),
                                                          'pY': serializeParam(
                                                            testRowsItem,
                                                            ParamType.int,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    onLongPress: () async {
                                                      await actions
                                                          .inactivitymanager(
                                                        context,
                                                      );
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Delete product'),
                                                                    content: Text(
                                                                        'Are you sure you want to delete this product from the planogram?'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                        child: Text(
                                                                            'Cancel'),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                        child: Text(
                                                                            'Yes, delete'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ) ??
                                                              false;
                                                      if (confirmDialogResponse) {
                                                        _model
                                                            .updateRowsAtIndex(
                                                          testRowsIndex,
                                                          (e) => e
                                                            ..updateProducts(
                                                              (e) => e.removeAt(
                                                                  productsIndex),
                                                            ),
                                                        );
                                                        safeSetState(() {});
                                                      }
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          functions
                                                              .imagePathFromUrl(
                                                                  productsItem
                                                                      .img),
                                                          width: 200.0,
                                                          height: 200.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            50.0, 0.0, 50.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await actions.inactivitymanager(
                              context,
                            );
                            _model.apiResultx0y =
                                await ApiShelfGroup.newPlanogramCall.call(
                              toKen: FFAppState().user.token,
                              bodyJson: functions.newPlanogram(
                                  _model.rows.toList(),
                                  widget.nameShelf!,
                                  widget.shelfWidthCM!.toString(),
                                  widget.shelfHeightCM!.toString(),
                                  widget.numRows!,
                                  widget.shelfDepthCM!,
                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAICAgICAgICAgICAwMDBAYEBAQEBAYGBQYGBgYGBgYICQcHBwkJCQgKCAgICgkKDAwMDAwMDAwMDAwMDAz/2wBDAQMDAwQDBAgEBAgMDBQYDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAABAAEDASIAAhEBAxEB/8QAFQABAQAAAAAAAAAAAAAAAAAAAAb/xAAgEAACAQQBBQAAAAAAAAAAAAABAgMABAUGERMhMUGB/8QAFAEBAAAAAAAAAAAAAAAAAAAABf/EABkRAQACAwAAAAAAAAAAAAAAAAEAAhExUv/aAAwDAQACEQMRAD8A0vYKyMIMxjHXsm5rmALjFaW5qQCNTck9vXT++kXk00ZzR//Z',
                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAICAgICAgICAgICAwMDBAYEBAQEBAYGBQYGBgYGBgYICQcHBwkJCQgKCAgICgkKDAwMDAwMDAwMDAwMDAz/2wBDAQMDAwQDBAgEBAgMDBQYDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAABAAEDASIAAhEBAxEB/8QAFQABAQAAAAAAAAAAAAAAAAAAAAb/xAAgEAACAQQBBQAAAAAAAAAAAAABAgMABAUGERMhMUGB/8QAFAEBAAAAAAAAAAAAAAAAAAAABf/EABkRAQACAwAAAAAAAAAAAAAAAAEAAhExUv/aAAwDAQACEQMRAD8A0vYKyMIMxjHXsm5rmALjFaW5qQCNTck9vXT++kXk00ZzR//Z',
                                  widget.retailerName!,
                                  FFAppState().user.user.retailers.toList()),
                            );

                            if ((_model.apiResultx0y?.succeeded ?? true)) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Success!'),
                                    content:
                                        Text('Planogram created successfully'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );

                              context.goNamed(MenuWidget.routeName);
                            }

                            safeSetState(() {});
                          },
                          text: 'Create planogram',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF205295),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.hankenGrotesk(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              -2.0,
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Builder(
                                            builder: (context) => Container(
                                              width: 250.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .sinputSkuTextController,
                                                focusNode:
                                                    _model.sinputSkuFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.sinputSkuTextController',
                                                  Duration(milliseconds: 2000),
                                                  () async {
                                                    var _shouldSetState = false;
                                                    if (_model.sinputSkuTextController
                                                                .text !=
                                                            '') {
                                                      await actions
                                                          .inactivitymanager(
                                                        context,
                                                      );
                                                    } else {
                                                      await actions
                                                          .inactivitymanager(
                                                        context,
                                                      );
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
                                                                  CustomAlertText1btnWidget(
                                                                textParam:
                                                                    'Not found!',
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }

                                                    _model.searchUPCPRODUCT =
                                                        await ApiShelfGroup
                                                            .searchProductUPCCall
                                                            .call(
                                                      upc: _model
                                                          .sinputSkuTextController
                                                          .text,
                                                      token: FFAppState()
                                                          .user
                                                          .token,
                                                      toKen: FFAppState()
                                                          .user
                                                          .token,
                                                    );

                                                    _shouldSetState = true;
                                                    if (getJsonField(
                                                          (_model.searchUPCPRODUCT
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.error''',
                                                        ) !=
                                                        null) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            getJsonField(
                                                              (_model.searchUPCPRODUCT
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.details''',
                                                            ).toString(),
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    } else {
                                                      safeSetState(() {});
                                                    }

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                  },
                                                ),
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                    font: GoogleFonts
                                                        .hankenGrotesk(
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
                                                    shadows: [
                                                      Shadow(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        offset:
                                                            Offset(2.0, 2.0),
                                                        blurRadius: 2.0,
                                                      )
                                                    ],
                                                  ),
                                                  hintText:
                                                      '--Enter No. Display / Upc Code',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .hankenGrotesk(
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
                                                        color:
                                                            Color(0xFFBABABA),
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
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: Color(0xFFEFF4F7),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                                keyboardType:
                                                    TextInputType.number,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .sinputSkuTextControllerValidator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter
                                                      .allow(
                                                          RegExp('^[0-9]+\$'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          var _shouldSetState = false;
                                          await actions.inactivitymanager(
                                            context,
                                          );
                                          if ((_model.sinputSkuTextController
                                                          .text !=
                                                      '') &&
                                              (_model.sinputSkuTextController
                                                      .text !=
                                                  ' ')) {
                                            _model.barcodeModeUPCQ12 =
                                                await ApiShelfGroup
                                                    .searchProductUPCCall
                                                    .call(
                                              upc: _model
                                                  .sinputSkuTextController.text,
                                              toKen: FFAppState().user.token,
                                              token: FFAppState().user.token,
                                            );

                                            _shouldSetState = true;
                                            if (getJsonField(
                                                  (_model.barcodeModeUPCQ12
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.notFound''',
                                                ) !=
                                                null) {
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
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          CustomAlertText1btnWidget(
                                                        textParam: getJsonField(
                                                          (_model.barcodeModeUPCQ12
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.message''',
                                                        ).toString(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            } else {
                                              if ((_model.rows.isNotEmpty) ==
                                                  true) {
                                                if (widget.shelfWidthCM! <=
                                                    functions.sumarProductos(
                                                        _model.rows
                                                            .elementAtOrNull(_model
                                                                .indiceActual)!
                                                            .products
                                                            .toList(),
                                                        ProductListRowStruct(
                                                          productId: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQ12
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.id,
                                                          height: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQ12
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.height,
                                                          width: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQ12
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.width,
                                                          img: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQ12
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.img,
                                                        ))) {
                                                  _model.indiceActual =
                                                      _model.indiceActual + 1;
                                                  _model.rowEdit =
                                                      _model.rowEdit + 1;
                                                  safeSetState(() {});
                                                }
                                                _model.updateRowsAtIndex(
                                                  _model.rowEdit,
                                                  (e) => e
                                                    ..updateProducts(
                                                      (e) => e.add(
                                                          ProductListRowStruct(
                                                        productId: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.id,
                                                        position: _model.rows
                                                            .elementAtOrNull(
                                                                _model
                                                                    .indiceActual)
                                                            ?.products
                                                            .length,
                                                        quantity: 1,
                                                        height: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.height,
                                                        width: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.width,
                                                        img: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.img,
                                                        sku: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.sku,
                                                        name: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.name,
                                                      )),
                                                    )
                                                    ..height =
                                                        widget.shelfHeightCM,
                                                );
                                                safeSetState(() {});
                                              } else {
                                                if (widget.shelfWidthCM! <=
                                                    functions.sumarProductos(
                                                        _model.rows
                                                            .elementAtOrNull(_model
                                                                .indiceActual)!
                                                            .products
                                                            .toList(),
                                                        ProductListRowStruct(
                                                          productId: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQ12
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.id,
                                                          height: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQ12
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.height,
                                                          width: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQ12
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.width,
                                                          img: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQ12
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.img,
                                                          quantity: 1,
                                                        ))) {
                                                  _model.indiceActual =
                                                      _model.indiceActual + 1;
                                                  _model.rowEdit =
                                                      _model.rowEdit + 1;
                                                  safeSetState(() {});
                                                }
                                                _model.updateRowsAtIndex(
                                                  _model.rowEdit,
                                                  (e) => e
                                                    ..updateProducts(
                                                      (e) => e.add(
                                                          ProductListRowStruct(
                                                        productId: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.id,
                                                        position: _model.rows
                                                            .elementAtOrNull(
                                                                _model
                                                                    .indiceActual)
                                                            ?.products
                                                            .length,
                                                        quantity: 1,
                                                        height: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.height,
                                                        width: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.width,
                                                        img: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.img,
                                                        sku: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.sku,
                                                        name: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQ12
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.name,
                                                      )),
                                                    )
                                                    ..height =
                                                        widget.shelfHeightCM,
                                                );
                                                safeSetState(() {});
                                              }

                                              safeSetState(() {
                                                _model.sinputSkuTextController
                                                    ?.text = ' ';
                                              });
                                            }
                                          } else {
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/Group_7740.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await actions.inactivitymanager(
                                            context,
                                          );
                                          _model.barcodeModeUPC =
                                              await FlutterBarcodeScanner
                                                  .scanBarcode(
                                            '#C62828', // scanning line color
                                            'Cancel', // cancel button text
                                            true, // whether to show the flash icon
                                            ScanMode.BARCODE,
                                          );

                                          safeSetState(() {
                                            _model.sinputSkuTextController
                                                ?.text = _model.barcodeModeUPC;
                                          });
                                          _model.barcodeModeUPCQR =
                                              await ApiShelfGroup
                                                  .searchProductUPCCall
                                                  .call(
                                            upc: _model.barcodeModeUPC,
                                            toKen: FFAppState().user.token,
                                            token: FFAppState().user.token,
                                          );

                                          if (getJsonField(
                                                (_model.barcodeModeUPCQR
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.notFound''',
                                              ) !=
                                              null) {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
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
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child:
                                                        CustomAlertText1btnWidget(
                                                      textParam: getJsonField(
                                                        (_model.barcodeModeUPCQR
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      ).toString(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            if ((_model.rows.isNotEmpty) ==
                                                true) {
                                              if (widget.shelfWidthCM! <=
                                                  functions.sumarProductos(
                                                      _model.rows
                                                          .elementAtOrNull(_model
                                                              .indiceActual)!
                                                          .products
                                                          .toList(),
                                                      ProductListRowStruct(
                                                        productId: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQR
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.id,
                                                        height: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQR
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.height,
                                                        width: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQR
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.width,
                                                      ))) {
                                                _model.indiceActual =
                                                    _model.indiceActual + 1;
                                                _model.widthDisponibleRowActual =
                                                    functions.sumarProductos(
                                                        _model.rows
                                                            .elementAtOrNull(_model
                                                                .indiceActual)!
                                                            .products
                                                            .toList(),
                                                        ProductListRowStruct(
                                                          productId: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQR
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.id,
                                                          height: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQR
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.height,
                                                          width: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQR
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.width,
                                                        ));
                                                _model.rowEdit =
                                                    _model.rowEdit + 1;
                                                safeSetState(() {});
                                              }
                                              _model.updateRowsAtIndex(
                                                _model.rowEdit,
                                                (e) => e
                                                  ..updateProducts(
                                                    (e) => e.add(
                                                        ProductListRowStruct(
                                                      productId: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.id,
                                                      position: _model.rows
                                                          .elementAtOrNull(
                                                              _model
                                                                  .indiceActual)
                                                          ?.products
                                                          .length,
                                                      quantity: 1,
                                                      height: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.height,
                                                      width: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.width,
                                                      img: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.img,
                                                      sku: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.sku,
                                                      name: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.name,
                                                    )),
                                                  )
                                                  ..height =
                                                      widget.shelfHeightCM,
                                              );
                                              safeSetState(() {});
                                            } else {
                                              if (widget.shelfWidthCM! <=
                                                  functions.sumarProductos(
                                                      _model.rows
                                                          .elementAtOrNull(_model
                                                              .indiceActual)!
                                                          .products
                                                          .toList(),
                                                      ProductListRowStruct(
                                                        productId: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQR
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.id,
                                                        height: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQR
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.height,
                                                        width: ProductUPCStruct
                                                                .maybeFromMap((_model
                                                                        .barcodeModeUPCQR
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.width,
                                                      ))) {
                                                _model.indiceActual =
                                                    _model.indiceActual + 1;
                                                _model.widthDisponibleRowActual =
                                                    functions.sumarProductos(
                                                        _model.rows
                                                            .elementAtOrNull(_model
                                                                .indiceActual)!
                                                            .products
                                                            .toList(),
                                                        ProductListRowStruct(
                                                          productId: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQR
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.id,
                                                          height: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQR
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.height,
                                                          width: ProductUPCStruct
                                                                  .maybeFromMap((_model
                                                                          .barcodeModeUPCQR
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.width,
                                                        ));
                                                _model.rowEdit =
                                                    _model.rowEdit + 1;
                                                safeSetState(() {});
                                              }
                                              _model.updateRowsAtIndex(
                                                _model.rowEdit,
                                                (e) => e
                                                  ..updateProducts(
                                                    (e) => e.add(
                                                        ProductListRowStruct(
                                                      productId: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.id,
                                                      position: _model.rows
                                                          .elementAtOrNull(
                                                              _model
                                                                  .indiceActual)
                                                          ?.products
                                                          .length,
                                                      quantity: 1,
                                                      height: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.height,
                                                      width: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.width,
                                                      img: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.img,
                                                      sku: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.sku,
                                                      name: ProductUPCStruct
                                                              .maybeFromMap((_model
                                                                      .barcodeModeUPCQR
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.name,
                                                    )),
                                                  )
                                                  ..height =
                                                      widget.shelfHeightCM,
                                              );
                                              safeSetState(() {});
                                            }

                                            safeSetState(() {
                                              _model.sinputSkuTextController
                                                  ?.text = ' ';
                                            });
                                          }

                                          safeSetState(() {});
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Group_7739.png',
                                            fit: BoxFit.cover,
                                          ),
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
              ),
            ].addToEnd(SizedBox(height: 50.0)),
          ),
        ),
      ),
    );
  }
}
