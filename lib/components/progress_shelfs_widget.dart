import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'progress_shelfs_model.dart';
export 'progress_shelfs_model.dart';

class ProgressShelfsWidget extends StatefulWidget {
  const ProgressShelfsWidget({super.key});

  @override
  State<ProgressShelfsWidget> createState() => _ProgressShelfsWidgetState();
}

class _ProgressShelfsWidgetState extends State<ProgressShelfsWidget> {
  late ProgressShelfsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressShelfsModel());
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
      width: 100.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: Color(0xFFEFEFEF),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Color(0xFFF64646),
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                  child: Text(
                    'Pending ${functions.numberOfPendings(getJsonField(
                      FFAppState().routeOfDay.toMap(),
                      r'''$.shelfs''',
                    ))}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.hankenGrotesk(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
            Container(
              width: functions
                  .pintarProgresoShelfs(getJsonField(
                    FFAppState().routeOfDay.toMap(),
                    r'''$.shelfs''',
                  ))
                  .toDouble(),
              height: 40.0,
              decoration: BoxDecoration(
                color: Color(0xFF2DD200),
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                  child: Text(
                    functions.completeAndPendigs(getJsonField(
                      FFAppState().routeOfDay.toMap(),
                      r'''$.shelfs''',
                    )),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.hankenGrotesk(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
