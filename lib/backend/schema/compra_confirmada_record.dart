import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'compra_confirmada_record.g.dart';

abstract class CompraConfirmadaRecord
    implements Built<CompraConfirmadaRecord, CompraConfirmadaRecordBuilder> {
  static Serializer<CompraConfirmadaRecord> get serializer =>
      _$compraConfirmadaRecordSerializer;

  @BuiltValueField(wireName: 'Productos')
  BuiltList<String>? get productos;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  String? get uid;

  double? get subtotal;

  int? get idCompra;

  BuiltList<int>? get cantidad;

  String? get correo;

  String? get nombreCliente;

  String? get telefono;

  bool? get completado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompraConfirmadaRecordBuilder builder) =>
      builder
        ..productos = ListBuilder()
        ..direccion = ''
        ..uid = ''
        ..subtotal = 0.0
        ..idCompra = 0
        ..cantidad = ListBuilder()
        ..correo = ''
        ..nombreCliente = ''
        ..telefono = ''
        ..completado = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('compraConfirmada');

  static Stream<CompraConfirmadaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompraConfirmadaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompraConfirmadaRecord._();
  factory CompraConfirmadaRecord(
          [void Function(CompraConfirmadaRecordBuilder) updates]) =
      _$CompraConfirmadaRecord;

  static CompraConfirmadaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompraConfirmadaRecordData({
  String? direccion,
  String? uid,
  double? subtotal,
  int? idCompra,
  String? correo,
  String? nombreCliente,
  String? telefono,
  bool? completado,
}) {
  final firestoreData = serializers.toFirestore(
    CompraConfirmadaRecord.serializer,
    CompraConfirmadaRecord(
      (c) => c
        ..productos = null
        ..direccion = direccion
        ..uid = uid
        ..subtotal = subtotal
        ..idCompra = idCompra
        ..cantidad = null
        ..correo = correo
        ..nombreCliente = nombreCliente
        ..telefono = telefono
        ..completado = completado,
    ),
  );

  return firestoreData;
}
