import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SolicitudesAdminUsuarioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for precio widget.
  TextEditingController? precioController;
  String? Function(BuildContext, String?)? precioControllerValidator;
  // State field(s) for impuestos widget.
  TextEditingController? impuestosController;
  String? Function(BuildContext, String?)? impuestosControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    precioController?.dispose();
    impuestosController?.dispose();
  }

  /// Additional helper methods are added here.

}
