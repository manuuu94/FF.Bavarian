// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagenes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagenesRecord> _$imagenesRecordSerializer =
    new _$ImagenesRecordSerializer();

class _$ImagenesRecordSerializer
    implements StructuredSerializer<ImagenesRecord> {
  @override
  final Iterable<Type> types = const [ImagenesRecord, _$ImagenesRecord];
  @override
  final String wireName = 'ImagenesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImagenesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imgPath;
    if (value != null) {
      result
        ..add('imgPath')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ImagenesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagenesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imgPath':
          result.imgPath.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImagenesRecord extends ImagenesRecord {
  @override
  final BuiltList<String>? imgPath;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImagenesRecord([void Function(ImagenesRecordBuilder)? updates]) =>
      (new ImagenesRecordBuilder()..update(updates))._build();

  _$ImagenesRecord._({this.imgPath, this.ffRef}) : super._();

  @override
  ImagenesRecord rebuild(void Function(ImagenesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagenesRecordBuilder toBuilder() =>
      new ImagenesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagenesRecord &&
        imgPath == other.imgPath &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imgPath.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImagenesRecord')
          ..add('imgPath', imgPath)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImagenesRecordBuilder
    implements Builder<ImagenesRecord, ImagenesRecordBuilder> {
  _$ImagenesRecord? _$v;

  ListBuilder<String>? _imgPath;
  ListBuilder<String> get imgPath =>
      _$this._imgPath ??= new ListBuilder<String>();
  set imgPath(ListBuilder<String>? imgPath) => _$this._imgPath = imgPath;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImagenesRecordBuilder() {
    ImagenesRecord._initializeBuilder(this);
  }

  ImagenesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imgPath = $v.imgPath?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagenesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImagenesRecord;
  }

  @override
  void update(void Function(ImagenesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImagenesRecord build() => _build();

  _$ImagenesRecord _build() {
    _$ImagenesRecord _$result;
    try {
      _$result = _$v ??
          new _$ImagenesRecord._(imgPath: _imgPath?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imgPath';
        _imgPath?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImagenesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
