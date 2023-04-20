import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_opcionentrega_copy2/bs_opcionentrega_copy2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bs_opcionentrega_copy3_model.dart';
export 'bs_opcionentrega_copy3_model.dart';

class BsOpcionentregaCopy3Widget extends StatefulWidget {
  const BsOpcionentregaCopy3Widget({
    Key? key,
    this.opcionentrega,
  }) : super(key: key);

  final OpcionesentregaRecord? opcionentrega;

  @override
  _BsOpcionentregaCopy3WidgetState createState() =>
      _BsOpcionentregaCopy3WidgetState();
}

class _BsOpcionentregaCopy3WidgetState
    extends State<BsOpcionentregaCopy3Widget> {
  late BsOpcionentregaCopy3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsOpcionentregaCopy3Model());
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
      width: double.infinity,
      height: 489.3,
      constraints: BoxConstraints(
        maxWidth: double.infinity,
        maxHeight: double.infinity,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).sideBar,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
          width: 10.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<DireccionesRecord>>(
                stream: queryDireccionesRecord(
                  queryBuilder: (direccionesRecord) =>
                      direccionesRecord.where('uid', isEqualTo: currentUserUid),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<DireccionesRecord> listViewDireccionesRecordList =
                      snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewDireccionesRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewDireccionesRecord =
                          listViewDireccionesRecordList[listViewIndex];
                      return Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          extentRatio: 0.25,
                          children: [
                            SlidableAction(
                              label: 'Borrar',
                              backgroundColor: Color(0xFFFF0004),
                              icon: Icons.delete,
                              onPressed: (_) async {
                                await listViewDireccionesRecord.reference
                                    .delete();
                              },
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: Text(
                            listViewDireccionesRecord.nombredir!,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).text,
                                ),
                          ),
                          subtitle: Text(
                            listViewDireccionesRecord.direccioncompleta!,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).text,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFFFF0004),
                            size: 20.0,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          dense: false,
                        ),
                      );
                    },
                  );
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 5.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Atrás',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFF0004),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context).text,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 5.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 16.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (bottomSheetContext) {
                              return Padding(
                                padding: MediaQuery.of(bottomSheetContext)
                                    .viewInsets,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  child: BsOpcionentregaCopy2Widget(
                                    opcion: widget.opcionentrega,
                                  ),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        text: 'Añadir otra',
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).sideBarMenu,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Color(0xD2BC00FF),
                            width: 5.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
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
