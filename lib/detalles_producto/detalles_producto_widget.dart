import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detalles_producto_model.dart';
export 'detalles_producto_model.dart';

class DetallesProductoWidget extends StatefulWidget {
  const DetallesProductoWidget({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  _DetallesProductoWidgetState createState() => _DetallesProductoWidgetState();
}

class _DetallesProductoWidgetState extends State<DetallesProductoWidget> {
  late DetallesProductoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetallesProductoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional(0, -1),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Image.network(
                          'https://http2.mlstatic.com/D_NQ_NP_997491-MCR49576946794_042022-V.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: 486.8,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.85),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 470, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x430F1113),
                                  offset: Offset(0, -2),
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            alignment: AlignmentDirectional(0, 1),
                            child: Align(
                              alignment: AlignmentDirectional(0, -0.15),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 16, 20, 12),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            StreamBuilder<
                                                List<InventarioRecord>>(
                                              stream: queryInventarioRecord(
                                                singleRecord: true,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<InventarioRecord>
                                                    textNombreInventarioRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final textNombreInventarioRecord =
                                                    textNombreInventarioRecordList
                                                            .isNotEmpty
                                                        ? textNombreInventarioRecordList
                                                            .first
                                                        : null;
                                                return Text(
                                                  textNombreInventarioRecord!
                                                      .nombreProducto!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Precio ₡',
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                            StreamBuilder<
                                                List<InventarioRecord>>(
                                              stream: queryInventarioRecord(
                                                singleRecord: true,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<InventarioRecord>
                                                    textInventarioRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final textInventarioRecord =
                                                    textInventarioRecordList
                                                            .isNotEmpty
                                                        ? textInventarioRecordList
                                                            .first
                                                        : null;
                                                return Text(
                                                  valueOrDefault<String>(
                                                    textInventarioRecord!.precio
                                                        ?.toString(),
                                                    'precio',
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 34, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  buttonSize: 48,
                                  fillColor: Color(0x3600000F),
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    color: Color(0xFF090F13),
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    context.pop();
                                  },
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Text(
                                    'Todos los productos',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF090F13),
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.7, 0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  buttonSize: 46,
                                  icon: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Color(0xFF090F13),
                                    size: 28,
                                  ),
                                  onPressed: () {
                                    print('IconButton-Cart pressed ...');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Agregar al carrito',
                      options: FFButtonOptions(
                        width: 300,
                        height: 54,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Color(0xFF9E9E9E),
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowCountController(
                      decrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.minus,
                        color: enabled ? Color(0xDDEF2F2F) : Color(0xFFEEEEEE),
                        size: 20,
                      ),
                      incrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.plus,
                        color: enabled
                            ? FlutterFlowTheme.of(context).customColor1
                            : Color(0xFFEEEEEE),
                        size: 20,
                      ),
                      countBuilder: (count) => Text(
                        count.toString(),
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      count: _model.countControllerValue ??= 1,
                      updateCount: (count) =>
                          setState(() => _model.countControllerValue = count),
                      stepSize: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Descripcion del producto',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: StreamBuilder<List<InventarioRecord>>(
                      stream: queryInventarioRecord(
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<InventarioRecord>
                            textDescripcionInventarioRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textDescripcionInventarioRecord =
                            textDescripcionInventarioRecordList.isNotEmpty
                                ? textDescripcionInventarioRecordList.first
                                : null;
                        return Text(
                          textDescripcionInventarioRecord!.descripcionProducto!,
                          style: FlutterFlowTheme.of(context).bodyText2,
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
    );
  }
}
