import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevaCotizacionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_nombre widget.
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txt_peso widget.
  TextEditingController? txtPesoController;
  String? Function(BuildContext, String?)? txtPesoControllerValidator;
  // State field(s) for txt_tipo widget.
  TextEditingController? txtTipoController;
  String? Function(BuildContext, String?)? txtTipoControllerValidator;
  // State field(s) for txt_enlace widget.
  TextEditingController? txtEnlaceController;
  String? Function(BuildContext, String?)? txtEnlaceControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreController?.dispose();
    txtPesoController?.dispose();
    txtTipoController?.dispose();
    txtEnlaceController?.dispose();
  }

  /// Additional helper methods are added here.

}
