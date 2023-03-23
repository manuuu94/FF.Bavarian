import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'direcciones_record.g.dart';

abstract class DireccionesRecord
    implements Built<DireccionesRecord, DireccionesRecordBuilder> {
  static Serializer<DireccionesRecord> get serializer =>
      _$direccionesRecordSerializer;

  String? get direccioncompleta;

  DocumentReference? get opcionentrega;

  String? get nombredir;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DireccionesRecordBuilder builder) => builder
    ..direccioncompleta = ''
    ..nombredir = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('direcciones');

  static Stream<DireccionesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DireccionesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DireccionesRecord._();
  factory DireccionesRecord([void Function(DireccionesRecordBuilder) updates]) =
      _$DireccionesRecord;

  static DireccionesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDireccionesRecordData({
  String? direccioncompleta,
  DocumentReference? opcionentrega,
  String? nombredir,
}) {
  final firestoreData = serializers.toFirestore(
    DireccionesRecord.serializer,
    DireccionesRecord(
      (d) => d
        ..direccioncompleta = direccioncompleta
        ..opcionentrega = opcionentrega
        ..nombredir = nombredir,
    ),
  );

  return firestoreData;
}
