import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SolicitudeCotizacionesAdminModModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for precio widget.
  TextEditingController? precioController;
  String? Function(BuildContext, String?)? precioControllerValidator;
  // State field(s) for impuestos widget.
  TextEditingController? impuestosController;
  String? Function(BuildContext, String?)? impuestosControllerValidator;
  // State field(s) for importacion widget.
  TextEditingController? importacionController;
  String? Function(BuildContext, String?)? importacionControllerValidator;
  // State field(s) for total widget.
  TextEditingController? totalController;
  String? Function(BuildContext, String?)? totalControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Custom Action - sumaCostos2] action in Button widget.
  double? total;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    precioController?.dispose();
    impuestosController?.dispose();
    importacionController?.dispose();
    totalController?.dispose();
  }

  /// Additional helper methods are added here.

}
