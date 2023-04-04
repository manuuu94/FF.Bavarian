// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direcciones_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DireccionesRecord> _$direccionesRecordSerializer =
    new _$DireccionesRecordSerializer();

class _$DireccionesRecordSerializer
    implements StructuredSerializer<DireccionesRecord> {
  @override
  final Iterable<Type> types = const [DireccionesRecord, _$DireccionesRecord];
  @override
  final String wireName = 'DireccionesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DireccionesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.direccioncompleta;
    if (value != null) {
      result
        ..add('direccioncompleta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opcionentrega;
    if (value != null) {
      result
        ..add('opcionentrega')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nombredir;
    if (value != null) {
      result
        ..add('nombredir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
  DireccionesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DireccionesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'direccioncompleta':
          result.direccioncompleta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'opcionentrega':
          result.opcionentrega = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'nombredir':
          result.nombredir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
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

class _$DireccionesRecord extends DireccionesRecord {
  @override
  final String? direccioncompleta;
  @override
  final DocumentReference<Object?>? opcionentrega;
  @override
  final String? nombredir;
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DireccionesRecord(
          [void Function(DireccionesRecordBuilder)? updates]) =>
      (new DireccionesRecordBuilder()..update(updates))._build();

  _$DireccionesRecord._(
      {this.direccioncompleta,
      this.opcionentrega,
      this.nombredir,
      this.uid,
      this.ffRef})
      : super._();

  @override
  DireccionesRecord rebuild(void Function(DireccionesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DireccionesRecordBuilder toBuilder() =>
      new DireccionesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DireccionesRecord &&
        direccioncompleta == other.direccioncompleta &&
        opcionentrega == other.opcionentrega &&
        nombredir == other.nombredir &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, direccioncompleta.hashCode);
    _$hash = $jc(_$hash, opcionentrega.hashCode);
    _$hash = $jc(_$hash, nombredir.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DireccionesRecord')
          ..add('direccioncompleta', direccioncompleta)
          ..add('opcionentrega', opcionentrega)
          ..add('nombredir', nombredir)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DireccionesRecordBuilder
    implements Builder<DireccionesRecord, DireccionesRecordBuilder> {
  _$DireccionesRecord? _$v;

  String? _direccioncompleta;
  String? get direccioncompleta => _$this._direccioncompleta;
  set direccioncompleta(String? direccioncompleta) =>
      _$this._direccioncompleta = direccioncompleta;

  DocumentReference<Object?>? _opcionentrega;
  DocumentReference<Object?>? get opcionentrega => _$this._opcionentrega;
  set opcionentrega(DocumentReference<Object?>? opcionentrega) =>
      _$this._opcionentrega = opcionentrega;

  String? _nombredir;
  String? get nombredir => _$this._nombredir;
  set nombredir(String? nombredir) => _$this._nombredir = nombredir;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DireccionesRecordBuilder() {
    DireccionesRecord._initializeBuilder(this);
  }

  DireccionesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _direccioncompleta = $v.direccioncompleta;
      _opcionentrega = $v.opcionentrega;
      _nombredir = $v.nombredir;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DireccionesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DireccionesRecord;
  }

  @override
  void update(void Function(DireccionesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DireccionesRecord build() => _build();

  _$DireccionesRecord _build() {
    final _$result = _$v ??
        new _$DireccionesRecord._(
            direccioncompleta: direccioncompleta,
            opcionentrega: opcionentrega,
            nombredir: nombredir,
            uid: uid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
