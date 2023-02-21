// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InventarioRecord> _$inventarioRecordSerializer =
    new _$InventarioRecordSerializer();

class _$InventarioRecordSerializer
    implements StructuredSerializer<InventarioRecord> {
  @override
  final Iterable<Type> types = const [InventarioRecord, _$InventarioRecord];
  @override
  final String wireName = 'InventarioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InventarioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreProducto;
    if (value != null) {
      result
        ..add('nombre_Producto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.disponible;
    if (value != null) {
      result
        ..add('disponible')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcionProducto;
    if (value != null) {
      result
        ..add('DescripcionProducto')
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
  InventarioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InventarioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre_Producto':
          result.nombreProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'disponible':
          result.disponible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DescripcionProducto':
          result.descripcionProducto = serializers.deserialize(value,
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

class _$InventarioRecord extends InventarioRecord {
  @override
  final String? nombreProducto;
  @override
  final int? cantidad;
  @override
  final bool? disponible;
  @override
  final double? precio;
  @override
  final String? image;
  @override
  final String? descripcionProducto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InventarioRecord(
          [void Function(InventarioRecordBuilder)? updates]) =>
      (new InventarioRecordBuilder()..update(updates))._build();

  _$InventarioRecord._(
      {this.nombreProducto,
      this.cantidad,
      this.disponible,
      this.precio,
      this.image,
      this.descripcionProducto,
      this.ffRef})
      : super._();

  @override
  InventarioRecord rebuild(void Function(InventarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventarioRecordBuilder toBuilder() =>
      new InventarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventarioRecord &&
        nombreProducto == other.nombreProducto &&
        cantidad == other.cantidad &&
        disponible == other.disponible &&
        precio == other.precio &&
        image == other.image &&
        descripcionProducto == other.descripcionProducto &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombreProducto.hashCode), cantidad.hashCode),
                        disponible.hashCode),
                    precio.hashCode),
                image.hashCode),
            descripcionProducto.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InventarioRecord')
          ..add('nombreProducto', nombreProducto)
          ..add('cantidad', cantidad)
          ..add('disponible', disponible)
          ..add('precio', precio)
          ..add('image', image)
          ..add('descripcionProducto', descripcionProducto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InventarioRecordBuilder
    implements Builder<InventarioRecord, InventarioRecordBuilder> {
  _$InventarioRecord? _$v;

  String? _nombreProducto;
  String? get nombreProducto => _$this._nombreProducto;
  set nombreProducto(String? nombreProducto) =>
      _$this._nombreProducto = nombreProducto;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  bool? _disponible;
  bool? get disponible => _$this._disponible;
  set disponible(bool? disponible) => _$this._disponible = disponible;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _descripcionProducto;
  String? get descripcionProducto => _$this._descripcionProducto;
  set descripcionProducto(String? descripcionProducto) =>
      _$this._descripcionProducto = descripcionProducto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InventarioRecordBuilder() {
    InventarioRecord._initializeBuilder(this);
  }

  InventarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreProducto = $v.nombreProducto;
      _cantidad = $v.cantidad;
      _disponible = $v.disponible;
      _precio = $v.precio;
      _image = $v.image;
      _descripcionProducto = $v.descripcionProducto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventarioRecord;
  }

  @override
  void update(void Function(InventarioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventarioRecord build() => _build();

  _$InventarioRecord _build() {
    final _$result = _$v ??
        new _$InventarioRecord._(
            nombreProducto: nombreProducto,
            cantidad: cantidad,
            disponible: disponible,
            precio: precio,
            image: image,
            descripcionProducto: descripcionProducto,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
