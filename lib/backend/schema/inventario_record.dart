import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'inventario_record.g.dart';

abstract class InventarioRecord
    implements Built<InventarioRecord, InventarioRecordBuilder> {
  static Serializer<InventarioRecord> get serializer =>
      _$inventarioRecordSerializer;

  @BuiltValueField(wireName: 'nombre_Producto')
  String? get nombreProducto;

  int? get cantidad;

  bool? get disponible;

  double? get precio;

  String? get image;

  @BuiltValueField(wireName: 'DescripcionProducto')
  String? get descripcionProducto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InventarioRecordBuilder builder) => builder
    ..nombreProducto = ''
    ..cantidad = 0
    ..disponible = false
    ..precio = 0.0
    ..image = ''
    ..descripcionProducto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventario');

  static Stream<InventarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InventarioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InventarioRecord._();
  factory InventarioRecord([void Function(InventarioRecordBuilder) updates]) =
      _$InventarioRecord;

  static InventarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInventarioRecordData({
  String? nombreProducto,
  int? cantidad,
  bool? disponible,
  double? precio,
  String? image,
  String? descripcionProducto,
}) {
  final firestoreData = serializers.toFirestore(
    InventarioRecord.serializer,
    InventarioRecord(
      (i) => i
        ..nombreProducto = nombreProducto
        ..cantidad = cantidad
        ..disponible = disponible
        ..precio = precio
        ..image = image
        ..descripcionProducto = descripcionProducto,
    ),
  );

  return firestoreData;
}
