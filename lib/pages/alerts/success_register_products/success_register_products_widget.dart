import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'success_register_products_model.dart';
export 'success_register_products_model.dart';

class SuccessRegisterProductsWidget extends StatefulWidget {
  const SuccessRegisterProductsWidget({
    super.key,
    this.aFoto,
    this.bFoto,
  });

  final FFUploadedFile? aFoto;
  final FFUploadedFile? bFoto;

  @override
  State<SuccessRegisterProductsWidget> createState() =>
      _SuccessRegisterProductsWidgetState();
}

class _SuccessRegisterProductsWidgetState
    extends State<SuccessRegisterProductsWidget> {
  late SuccessRegisterProductsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessRegisterProductsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 333.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Are you sure you have finished registering all the products on the shelves?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.hankenGrotesk(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    _model.apiResultczw =
                        await ApiShelfGroup.shipShelfCall.call(
                      token: FFAppState().user.token,
                      bodyJson: functions.constructSendShelf(
                          FFAppState().ShelfSelected,
                          FFAppState().routeOfDay.routeId.toString(),
                          FFAppState().routeOfDay.routeId.toString(),
                          FFAppState().user.user.id,
                          functions.obtenerFechaHoraActual()),
                    );

                    _model.check = await ApiShelfGroup.sendPhotosCall.call(
                      token: FFAppState().user.token,
                      idSend: ResponseRegisterRouteStruct.maybeFromMap(
                              (_model.apiResultczw?.jsonBody ?? ''))
                          ?.id,
                      imgMainShelfBefore: widget.bFoto,
                      imgMainShelfAfter: widget.aFoto,
                    );

                    if (FFAppState().topup == true) {
                      context.goNamed(Rep1ScanblockidWidget.routeName);
                    } else {
                      context.goNamed(S1BlockCategories2Widget.routeName);
                    }

                    safeSetState(() {});
                  },
                  text: 'Yes',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 26.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.hankenGrotesk(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'No',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 26.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.hankenGrotesk(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ].divide(SizedBox(width: 20.0)),
            ),
          ),
        ],
      ),
    );
  }
}
