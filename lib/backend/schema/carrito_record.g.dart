// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrito_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarritoRecord> _$carritoRecordSerializer =
    new _$CarritoRecordSerializer();

class _$CarritoRecordSerializer implements StructuredSerializer<CarritoRecord> {
  @override
  final Iterable<Type> types = const [CarritoRecord, _$CarritoRecord];
  @override
  final String wireName = 'CarritoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarritoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  CarritoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarritoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$CarritoRecord extends CarritoRecord {
  @override
  final String? nombre;
  @override
  final double? precio;
  @override
  final int? cantidad;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarritoRecord([void Function(CarritoRecordBuilder)? updates]) =>
      (new CarritoRecordBuilder()..update(updates))._build();

  _$CarritoRecord._({this.nombre, this.precio, this.cantidad, this.ffRef})
      : super._();

  @override
  CarritoRecord rebuild(void Function(CarritoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarritoRecordBuilder toBuilder() => new CarritoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarritoRecord &&
        nombre == other.nombre &&
        precio == other.precio &&
        cantidad == other.cantidad &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, nombre.hashCode), precio.hashCode), cantidad.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarritoRecord')
          ..add('nombre', nombre)
          ..add('precio', precio)
          ..add('cantidad', cantidad)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarritoRecordBuilder
    implements Builder<CarritoRecord, CarritoRecordBuilder> {
  _$CarritoRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarritoRecordBuilder() {
    CarritoRecord._initializeBuilder(this);
  }

  CarritoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _precio = $v.precio;
      _cantidad = $v.cantidad;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarritoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarritoRecord;
  }

  @override
  void update(void Function(CarritoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarritoRecord build() => _build();

  _$CarritoRecord _build() {
    final _$result = _$v ??
        new _$CarritoRecord._(
            nombre: nombre, precio: precio, cantidad: cantidad, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
