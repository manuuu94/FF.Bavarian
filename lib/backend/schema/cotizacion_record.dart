import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cotizacion_record.g.dart';

abstract class CotizacionRecord
    implements Built<CotizacionRecord, CotizacionRecordBuilder> {
  static Serializer<CotizacionRecord> get serializer =>
      _$cotizacionRecordSerializer;

  @BuiltValueField(wireName: 'nombre_producto')
  String? get nombreProducto;

  double? get precio;

  DateTime? get fecha;

  double? get impuestos;

  @BuiltValueField(wireName: 'costo_importacion')
  double? get costoImportacion;

  double? get total;

  int? get peso;

  @BuiltValueField(wireName: 'tipo_articulo')
  String? get tipoArticulo;

  String? get enlace;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CotizacionRecordBuilder builder) => builder
    ..nombreProducto = ''
    ..precio = 0.0
    ..impuestos = 0.0
    ..costoImportacion = 0.0
    ..total = 0.0
    ..peso = 0
    ..tipoArticulo = ''
    ..enlace = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cotizacion');

  static Stream<CotizacionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CotizacionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CotizacionRecord._();
  factory CotizacionRecord([void Function(CotizacionRecordBuilder) updates]) =
      _$CotizacionRecord;

  static CotizacionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCotizacionRecordData({
  String? nombreProducto,
  double? precio,
  DateTime? fecha,
  double? impuestos,
  double? costoImportacion,
  double? total,
  int? peso,
  String? tipoArticulo,
  String? enlace,
}) {
  final firestoreData = serializers.toFirestore(
    CotizacionRecord.serializer,
    CotizacionRecord(
      (c) => c
        ..nombreProducto = nombreProducto
        ..precio = precio
        ..fecha = fecha
        ..impuestos = impuestos
        ..costoImportacion = costoImportacion
        ..total = total
        ..peso = peso
        ..tipoArticulo = tipoArticulo
        ..enlace = enlace,
    ),
  );

  return firestoreData;
}
