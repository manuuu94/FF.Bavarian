import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bs_opcionentrega_copy_model.dart';
export 'bs_opcionentrega_copy_model.dart';

class BsOpcionentregaCopyWidget extends StatefulWidget {
  const BsOpcionentregaCopyWidget({
    Key? key,
    this.categoria,
  }) : super(key: key);

  final OpcionesentregaRecord? categoria;

  @override
  _BsOpcionentregaCopyWidgetState createState() =>
      _BsOpcionentregaCopyWidgetState();
}

class _BsOpcionentregaCopyWidgetState extends State<BsOpcionentregaCopyWidget> {
  late BsOpcionentregaCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsOpcionentregaCopyModel());
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
      height: 270.0,
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: StreamBuilder<List<DireccionesRecord>>(
                stream: queryDireccionesRecord(
                  queryBuilder: (direccionesRecord) => direccionesRecord.where(
                      'opcionentrega',
                      isEqualTo: widget.categoria!.reference),
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
                    scrollDirection: Axis.vertical,
                    itemCount: listViewDireccionesRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewDireccionesRecord =
                          listViewDireccionesRecordList[listViewIndex];
                      return Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                        child: Slidable(
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            extentRatio: 0.25,
                            children: [
                              SlidableAction(
                                label: 'Enviar',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).greenConfirm,
                                icon: Icons.send,
                                onPressed: (_) {
                                  print('SlidableActionWidget pressed ...');
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
                              Icons.chevron_left,
                              color: Color(0xFFFF0004),
                              size: 40.0,
                            ),
                            tileColor: Colors.black,
                            dense: false,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Cancelar',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFFF0004),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
          ],
        ),
      ),
    );
  }
}
