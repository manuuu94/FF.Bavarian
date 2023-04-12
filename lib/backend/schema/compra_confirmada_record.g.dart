// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compra_confirmada_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompraConfirmadaRecord> _$compraConfirmadaRecordSerializer =
    new _$CompraConfirmadaRecordSerializer();

class _$CompraConfirmadaRecordSerializer
    implements StructuredSerializer<CompraConfirmadaRecord> {
  @override
  final Iterable<Type> types = const [
    CompraConfirmadaRecord,
    _$CompraConfirmadaRecord
  ];
  @override
  final String wireName = 'CompraConfirmadaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompraConfirmadaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.productos;
    if (value != null) {
      result
        ..add('Productos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
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
    value = object.subtotal;
    if (value != null) {
      result
        ..add('subtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.idCompra;
    if (value != null) {
      result
        ..add('idCompra')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
  CompraConfirmadaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompraConfirmadaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Productos':
          result.productos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subtotal':
          result.subtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'idCompra':
          result.idCompra = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cantidad':
          result.cantidad.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
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

class _$CompraConfirmadaRecord extends CompraConfirmadaRecord {
  @override
  final BuiltList<String>? productos;
  @override
  final String? direccion;
  @override
  final String? uid;
  @override
  final double? subtotal;
  @override
  final int? idCompra;
  @override
  final BuiltList<int>? cantidad;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompraConfirmadaRecord(
          [void Function(CompraConfirmadaRecordBuilder)? updates]) =>
      (new CompraConfirmadaRecordBuilder()..update(updates))._build();

  _$CompraConfirmadaRecord._(
      {this.productos,
      this.direccion,
      this.uid,
      this.subtotal,
      this.idCompra,
      this.cantidad,
      this.ffRef})
      : super._();

  @override
  CompraConfirmadaRecord rebuild(
          void Function(CompraConfirmadaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompraConfirmadaRecordBuilder toBuilder() =>
      new CompraConfirmadaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompraConfirmadaRecord &&
        productos == other.productos &&
        direccion == other.direccion &&
        uid == other.uid &&
        subtotal == other.subtotal &&
        idCompra == other.idCompra &&
        cantidad == other.cantidad &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productos.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jc(_$hash, idCompra.hashCode);
    _$hash = $jc(_$hash, cantidad.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompraConfirmadaRecord')
          ..add('productos', productos)
          ..add('direccion', direccion)
          ..add('uid', uid)
          ..add('subtotal', subtotal)
          ..add('idCompra', idCompra)
          ..add('cantidad', cantidad)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompraConfirmadaRecordBuilder
    implements Builder<CompraConfirmadaRecord, CompraConfirmadaRecordBuilder> {
  _$CompraConfirmadaRecord? _$v;

  ListBuilder<String>? _productos;
  ListBuilder<String> get productos =>
      _$this._productos ??= new ListBuilder<String>();
  set productos(ListBuilder<String>? productos) =>
      _$this._productos = productos;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  double? _subtotal;
  double? get subtotal => _$this._subtotal;
  set subtotal(double? subtotal) => _$this._subtotal = subtotal;

  int? _idCompra;
  int? get idCompra => _$this._idCompra;
  set idCompra(int? idCompra) => _$this._idCompra = idCompra;

  ListBuilder<int>? _cantidad;
  ListBuilder<int> get cantidad => _$this._cantidad ??= new ListBuilder<int>();
  set cantidad(ListBuilder<int>? cantidad) => _$this._cantidad = cantidad;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompraConfirmadaRecordBuilder() {
    CompraConfirmadaRecord._initializeBuilder(this);
  }

  CompraConfirmadaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productos = $v.productos?.toBuilder();
      _direccion = $v.direccion;
      _uid = $v.uid;
      _subtotal = $v.subtotal;
      _idCompra = $v.idCompra;
      _cantidad = $v.cantidad?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompraConfirmadaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompraConfirmadaRecord;
  }

  @override
  void update(void Function(CompraConfirmadaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompraConfirmadaRecord build() => _build();

  _$CompraConfirmadaRecord _build() {
    _$CompraConfirmadaRecord _$result;
    try {
      _$result = _$v ??
          new _$CompraConfirmadaRecord._(
              productos: _productos?.build(),
              direccion: direccion,
              uid: uid,
              subtotal: subtotal,
              idCompra: idCompra,
              cantidad: _cantidad?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productos';
        _productos?.build();

        _$failedField = 'cantidad';
        _cantidad?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompraConfirmadaRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
