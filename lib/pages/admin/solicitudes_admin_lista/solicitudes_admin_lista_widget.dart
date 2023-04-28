import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/internal_drawer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'solicitudes_admin_lista_model.dart';
export 'solicitudes_admin_lista_model.dart';

class SolicitudesAdminListaWidget extends StatefulWidget {
  const SolicitudesAdminListaWidget({
    Key? key,
    this.name,
    this.img,
    this.email,
    this.phone,
    this.time,
    this.opcion,
    this.list,
    this.cartlist,
    this.idSolicitud,
    this.cantlist,
    this.complBool,
    this.itemCompra,
  }) : super(key: key);

  final String? name;
  final String? img;
  final String? email;
  final String? phone;
  final DateTime? time;
  final DocumentReference? opcion;
  final CompraConfirmadaRecord? list;
  final List<String>? cartlist;
  final int? idSolicitud;
  final List<int>? cantlist;
  final bool? complBool;
  final DocumentReference? itemCompra;

  @override
  _SolicitudesAdminListaWidgetState createState() =>
      _SolicitudesAdminListaWidgetState();
}

class _SolicitudesAdminListaWidgetState
    extends State<SolicitudesAdminListaWidget> {
  late SolicitudesAdminListaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolicitudesAdminListaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.internalDrawerModel,
            updateCallback: () => setState(() {}),
            child: InternalDrawerWidget(),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/HD-wallpaper-bmw-black-dark-vehicle.jpg',
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          child: Icon(
                            Icons.menu_open,
                            color: Color(0xCBFF0097),
                            size: 45.0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (currentUserUid == 'm2CVamHMawQSkQh8MKlmRKMkgxn1')
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('SolicitudesAdminMenu');
                              },
                              child: Icon(
                                Icons.admin_panel_settings_outlined,
                                color: FlutterFlowTheme.of(context).text,
                                size: 40.0,
                              ),
                            ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('SolicitudesCliente');
                            },
                            child: Icon(
                              Icons.format_list_numbered_outlined,
                              color: FlutterFlowTheme.of(context).text,
                              size: 40.0,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Carrito');
                            },
                            child: Icon(
                              Icons.shopping_cart,
                              color: FlutterFlowTheme.of(context).text,
                              size: 40.0,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Index');
                            },
                            child: Icon(
                              Icons.home,
                              color: FlutterFlowTheme.of(context).text,
                              size: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xCBFF0097),
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 30.0, 15.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final solicitudLista =
                                      widget.cartlist?.toList() ?? [];
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: solicitudLista.length,
                                    itemBuilder:
                                        (context, solicitudListaIndex) {
                                      final solicitudListaItem =
                                          solicitudLista[solicitudListaIndex];
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 20.0, 10.0, 0.0),
                                          child: SelectionArea(
                                              child: Text(
                                            solicitudListaItem,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .text,
                                                  fontSize: 20.0,
                                                ),
                                          )),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 30.0, 15.0, 15.0),
                              child: Builder(
                                builder: (context) {
                                  final cantLista =
                                      widget.cantlist?.toList() ?? [];
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: cantLista.length,
                                    itemBuilder: (context, cantListaIndex) {
                                      final cantListaItem =
                                          cantLista[cantListaIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: SelectionArea(
                                                  child: Text(
                                                'x',
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .sideBarMenu,
                                                          fontSize: 20.0,
                                                        ),
                                              )),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 5.0, 0.0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  cantListaItem.toString(),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .sideBarMenu,
                                                        fontSize: 20.0,
                                                      ),
                                                )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  50.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Completado: ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).text,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: StreamBuilder<CompraConfirmadaRecord>(
                                stream: CompraConfirmadaRecord.getDocument(
                                    widget.itemCompra!),
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
                                  final checkboxCompraConfirmadaRecord =
                                      snapshot.data!;
                                  return Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).text,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue ??=
                                          checkboxCompraConfirmadaRecord
                                              .completado!,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue = newValue!);
                                        if (newValue!) {
                                          final compraConfirmadaUpdateData =
                                              createCompraConfirmadaRecordData(
                                            completado: true,
                                          );
                                          await checkboxCompraConfirmadaRecord
                                              .reference
                                              .update(
                                                  compraConfirmadaUpdateData);
                                        } else {
                                          final compraConfirmadaUpdateData =
                                              createCompraConfirmadaRecordData(
                                            completado: false,
                                          );
                                          await checkboxCompraConfirmadaRecord
                                              .reference
                                              .update(
                                                  compraConfirmadaUpdateData);
                                        }
                                      },
                                      activeColor: FlutterFlowTheme.of(context)
                                          .sideBarMenu,
                                      checkColor:
                                          FlutterFlowTheme.of(context).text,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.38),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          'Contactar con cliente: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).text,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.38),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: StreamBuilder<CompraConfirmadaRecord>(
                          stream: CompraConfirmadaRecord.getDocument(
                              widget.itemCompra!),
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
                            final textCompraConfirmadaRecord = snapshot.data!;
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://api.whatsapp.com/send?phone=${textCompraConfirmadaRecord.telefono}&text=Hola, ${textCompraConfirmadaRecord.nombreCliente}!! Le contacto sobre su pedido: ${textCompraConfirmadaRecord.idCompra?.toString()}.');
                              },
                              child: Text(
                                textCompraConfirmadaRecord.nombreCliente!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .sideBarMenu,
                                    ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Text(
                        'developed by group X',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto Mono',
                              color: FlutterFlowTheme.of(context).sideBar,
                              fontSize: 10.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
