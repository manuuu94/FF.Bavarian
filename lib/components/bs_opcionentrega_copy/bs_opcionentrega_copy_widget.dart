import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_opcionentrega_copy3/bs_opcionentrega_copy3_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
                      return Visibility(
                        visible:
                            (listViewDireccionesRecord.uid == currentUserUid) ||
                                (listViewDireccionesRecord.uid ==
                                    'idopcionentregasucursales'),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 5.0, 5.0, 5.0),
                          child: Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              extentRatio: 0.25,
                              children: [
                                StreamBuilder<List<CarritoRecord>>(
                                  stream: queryCarritoRecord(
                                    queryBuilder: (carritoRecord) =>
                                        carritoRecord.where('uid',
                                            isEqualTo: currentUserUid),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      );
                                    }
                                    List<CarritoRecord>
                                        slidableActionWidgetCarritoRecordList =
                                        snapshot.data!;
                                    return SlidableAction(
                                      label: 'Enviar',
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .greenConfirm,
                                      icon: Icons.send,
                                      onPressed: (_) async {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Solicitud enviada!'),
                                              content: Text(
                                                  'Los productos y/o su cotización ha sido enviada para revisión. Pronto se pondrán en contacto con usted!'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('X'),
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                        final compraConfirmadaCreateData = {
                                          ...createCompraConfirmadaRecordData(
                                            direccion: listViewDireccionesRecord
                                                .direccioncompleta,
                                            uid: currentUserUid,
                                            subtotal: functions.cartTotal(
                                                slidableActionWidgetCarritoRecordList
                                                    .map((e) => e.total)
                                                    .withoutNulls
                                                    .toList()),
                                            idCompra: random_data.randomInteger(
                                                0, 10000),
                                            correo: currentUserEmail,
                                            nombreCliente:
                                                currentUserDisplayName,
                                            telefono: currentPhoneNumber,
                                          ),
                                          'Productos':
                                              slidableActionWidgetCarritoRecordList
                                                  .map((e) => e.nombre)
                                                  .withoutNulls
                                                  .toList(),
                                          'cantidad':
                                              slidableActionWidgetCarritoRecordList
                                                  .map((e) => e.cantidad)
                                                  .withoutNulls
                                                  .toList(),
                                        };
                                        await CompraConfirmadaRecord.collection
                                            .doc()
                                            .set(compraConfirmadaCreateData);
                                        await actions.batchDelete(
                                          'Carrito',
                                        );
                                        await launchURL(
                                            'https://api.whatsapp.com/send?phone=50686218472&text=Hola, ${currentUserDisplayName} ! Has añadido ${slidableActionWidgetCarritoRecordList.length.toString()} producto/s a una solicitud de compra! Envíanos este mensaje si necesitas informarnos de algún detalle adicional o si tienes cualquier duda!');
                                      },
                                    );
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
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: AutoSizeText(
                      'Deslice para enviar solicitud de compra',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).text,
                            fontSize: 13.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Atrás',
                options: FFButtonOptions(
                  width: 150.0,
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
            if (widget.categoria!.tipoNombre != 'En sucursal')
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (bottomSheetContext) {
                            return Padding(
                              padding:
                                  MediaQuery.of(bottomSheetContext).viewInsets,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                child: BsOpcionentregaCopy3Widget(
                                  opcionentrega: widget.categoria,
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      child: AutoSizeText(
                        'Editar mis direcciones',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: FlutterFlowTheme.of(context).text,
                              fontSize: 12.0,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
