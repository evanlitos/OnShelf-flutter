import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menulateral_model.dart';
export 'menulateral_model.dart';

class MenulateralWidget extends StatefulWidget {
  const MenulateralWidget({super.key});

  @override
  State<MenulateralWidget> createState() => _MenulateralWidgetState();
}

class _MenulateralWidgetState extends State<MenulateralWidget> {
  late MenulateralModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenulateralModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: const BoxDecoration(
        color: Color(0xFFF7F9FB),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    FFIcons.kic8,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Profile',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    FFIcons.kic7,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Schedule work',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    FFIcons.kic6,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Replenishment - top up',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    Icons.display_settings_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Off Shelf Display',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    FFIcons.kic5,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Self life audit',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    FFIcons.kic4,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'POG - Block finder',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    FFIcons.kic3,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Return to Backdoor - RTV or RTB',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    FFIcons.kic2,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Delivery report',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    Icons.fence,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Absence',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(
                    FFIcons.kic1,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  title: Text(
                    'Settings',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Hanken Grotesk',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 50.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          'assets/images/log_out.webp',
                          width: 25.0,
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Log out',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Hanken Grotesk',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 21.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
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
    );
  }
}
