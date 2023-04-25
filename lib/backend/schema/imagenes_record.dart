import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'imagenes_record.g.dart';

abstract class ImagenesRecord
    implements Built<ImagenesRecord, ImagenesRecordBuilder> {
  static Serializer<ImagenesRecord> get serializer =>
      _$imagenesRecordSerializer;

  BuiltList<String>? get imgPath;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImagenesRecordBuilder builder) =>
      builder..imgPath = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imagenes');

  static Stream<ImagenesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImagenesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImagenesRecord._();
  factory ImagenesRecord([void Function(ImagenesRecordBuilder) updates]) =
      _$ImagenesRecord;

  static ImagenesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImagenesRecordData() {
  final firestoreData = serializers.toFirestore(
    ImagenesRecord.serializer,
    ImagenesRecord(
      (i) => i..imgPath = null,
    ),
  );

  return firestoreData;
}
