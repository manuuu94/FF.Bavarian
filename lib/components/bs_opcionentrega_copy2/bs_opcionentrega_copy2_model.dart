import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BsOpcionentregaCopy2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreDir widget.
  TextEditingController? txtNombreDirController;
  String? Function(BuildContext, String?)? txtNombreDirControllerValidator;
  // State field(s) for txtDirCompleta widget.
  TextEditingController? txtDirCompletaController;
  String? Function(BuildContext, String?)? txtDirCompletaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreDirController?.dispose();
    txtDirCompletaController?.dispose();
  }

  /// Additional helper methods are added here.

}
