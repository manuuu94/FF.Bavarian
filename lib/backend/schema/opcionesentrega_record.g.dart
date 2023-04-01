// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opcionesentrega_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OpcionesentregaRecord> _$opcionesentregaRecordSerializer =
    new _$OpcionesentregaRecordSerializer();

class _$OpcionesentregaRecordSerializer
    implements StructuredSerializer<OpcionesentregaRecord> {
  @override
  final Iterable<Type> types = const [
    OpcionesentregaRecord,
    _$OpcionesentregaRecord
  ];
  @override
  final String wireName = 'OpcionesentregaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OpcionesentregaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tipoNombre;
    if (value != null) {
      result
        ..add('tipoNombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  OpcionesentregaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OpcionesentregaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tipoNombre':
          result.tipoNombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$OpcionesentregaRecord extends OpcionesentregaRecord {
  @override
  final String? tipoNombre;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OpcionesentregaRecord(
          [void Function(OpcionesentregaRecordBuilder)? updates]) =>
      (new OpcionesentregaRecordBuilder()..update(updates))._build();

  _$OpcionesentregaRecord._({this.tipoNombre, this.ffRef}) : super._();

  @override
  OpcionesentregaRecord rebuild(
          void Function(OpcionesentregaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OpcionesentregaRecordBuilder toBuilder() =>
      new OpcionesentregaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpcionesentregaRecord &&
        tipoNombre == other.tipoNombre &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tipoNombre.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OpcionesentregaRecord')
          ..add('tipoNombre', tipoNombre)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OpcionesentregaRecordBuilder
    implements Builder<OpcionesentregaRecord, OpcionesentregaRecordBuilder> {
  _$OpcionesentregaRecord? _$v;

  String? _tipoNombre;
  String? get tipoNombre => _$this._tipoNombre;
  set tipoNombre(String? tipoNombre) => _$this._tipoNombre = tipoNombre;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OpcionesentregaRecordBuilder() {
    OpcionesentregaRecord._initializeBuilder(this);
  }

  OpcionesentregaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tipoNombre = $v.tipoNombre;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OpcionesentregaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OpcionesentregaRecord;
  }

  @override
  void update(void Function(OpcionesentregaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OpcionesentregaRecord build() => _build();

  _$OpcionesentregaRecord _build() {
    final _$result = _$v ??
        new _$OpcionesentregaRecord._(tipoNombre: tipoNombre, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
