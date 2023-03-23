import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'opcionesentrega_record.g.dart';

abstract class OpcionesentregaRecord
    implements Built<OpcionesentregaRecord, OpcionesentregaRecordBuilder> {
  static Serializer<OpcionesentregaRecord> get serializer =>
      _$opcionesentregaRecordSerializer;

  String? get tipoNombre;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OpcionesentregaRecordBuilder builder) =>
      builder..tipoNombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('opcionesentrega');

  static Stream<OpcionesentregaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OpcionesentregaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OpcionesentregaRecord._();
  factory OpcionesentregaRecord(
          [void Function(OpcionesentregaRecordBuilder) updates]) =
      _$OpcionesentregaRecord;

  static OpcionesentregaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOpcionesentregaRecordData({
  String? tipoNombre,
}) {
  final firestoreData = serializers.toFirestore(
    OpcionesentregaRecord.serializer,
    OpcionesentregaRecord(
      (o) => o..tipoNombre = tipoNombre,
    ),
  );

  return firestoreData;
}
