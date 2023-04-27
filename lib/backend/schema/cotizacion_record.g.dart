// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cotizacion_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CotizacionRecord> _$cotizacionRecordSerializer =
    new _$CotizacionRecordSerializer();

class _$CotizacionRecordSerializer
    implements StructuredSerializer<CotizacionRecord> {
  @override
  final Iterable<Type> types = const [CotizacionRecord, _$CotizacionRecord];
  @override
  final String wireName = 'CotizacionRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CotizacionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreProducto;
    if (value != null) {
      result
        ..add('nombre_producto')
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
    value = object.fecha;
    if (value != null) {
      result
        ..add('fecha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.impuestos;
    if (value != null) {
      result
        ..add('impuestos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.costoImportacion;
    if (value != null) {
      result
        ..add('costo_importacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.peso;
    if (value != null) {
      result
        ..add('peso')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tipoArticulo;
    if (value != null) {
      result
        ..add('tipo_articulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.enlace;
    if (value != null) {
      result
        ..add('enlace')
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
    value = object.completado;
    if (value != null) {
      result
        ..add('completado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.idCotizacion;
    if (value != null) {
      result
        ..add('idCotizacion')
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
  CotizacionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CotizacionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre_producto':
          result.nombreProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'fecha':
          result.fecha = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'impuestos':
          result.impuestos = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'costo_importacion':
          result.costoImportacion = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'peso':
          result.peso = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tipo_articulo':
          result.tipoArticulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'enlace':
          result.enlace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'completado':
          result.completado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'idCotizacion':
          result.idCotizacion = serializers.deserialize(value,
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

class _$CotizacionRecord extends CotizacionRecord {
  @override
  final String? nombreProducto;
  @override
  final double? precio;
  @override
  final DateTime? fecha;
  @override
  final double? impuestos;
  @override
  final double? costoImportacion;
  @override
  final double? total;
  @override
  final int? peso;
  @override
  final String? tipoArticulo;
  @override
  final String? enlace;
  @override
  final String? uid;
  @override
  final bool? completado;
  @override
  final int? idCotizacion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CotizacionRecord(
          [void Function(CotizacionRecordBuilder)? updates]) =>
      (new CotizacionRecordBuilder()..update(updates))._build();

  _$CotizacionRecord._(
      {this.nombreProducto,
      this.precio,
      this.fecha,
      this.impuestos,
      this.costoImportacion,
      this.total,
      this.peso,
      this.tipoArticulo,
      this.enlace,
      this.uid,
      this.completado,
      this.idCotizacion,
      this.ffRef})
      : super._();

  @override
  CotizacionRecord rebuild(void Function(CotizacionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CotizacionRecordBuilder toBuilder() =>
      new CotizacionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CotizacionRecord &&
        nombreProducto == other.nombreProducto &&
        precio == other.precio &&
        fecha == other.fecha &&
        impuestos == other.impuestos &&
        costoImportacion == other.costoImportacion &&
        total == other.total &&
        peso == other.peso &&
        tipoArticulo == other.tipoArticulo &&
        enlace == other.enlace &&
        uid == other.uid &&
        completado == other.completado &&
        idCotizacion == other.idCotizacion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreProducto.hashCode);
    _$hash = $jc(_$hash, precio.hashCode);
    _$hash = $jc(_$hash, fecha.hashCode);
    _$hash = $jc(_$hash, impuestos.hashCode);
    _$hash = $jc(_$hash, costoImportacion.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, peso.hashCode);
    _$hash = $jc(_$hash, tipoArticulo.hashCode);
    _$hash = $jc(_$hash, enlace.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, completado.hashCode);
    _$hash = $jc(_$hash, idCotizacion.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CotizacionRecord')
          ..add('nombreProducto', nombreProducto)
          ..add('precio', precio)
          ..add('fecha', fecha)
          ..add('impuestos', impuestos)
          ..add('costoImportacion', costoImportacion)
          ..add('total', total)
          ..add('peso', peso)
          ..add('tipoArticulo', tipoArticulo)
          ..add('enlace', enlace)
          ..add('uid', uid)
          ..add('completado', completado)
          ..add('idCotizacion', idCotizacion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CotizacionRecordBuilder
    implements Builder<CotizacionRecord, CotizacionRecordBuilder> {
  _$CotizacionRecord? _$v;

  String? _nombreProducto;
  String? get nombreProducto => _$this._nombreProducto;
  set nombreProducto(String? nombreProducto) =>
      _$this._nombreProducto = nombreProducto;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  DateTime? _fecha;
  DateTime? get fecha => _$this._fecha;
  set fecha(DateTime? fecha) => _$this._fecha = fecha;

  double? _impuestos;
  double? get impuestos => _$this._impuestos;
  set impuestos(double? impuestos) => _$this._impuestos = impuestos;

  double? _costoImportacion;
  double? get costoImportacion => _$this._costoImportacion;
  set costoImportacion(double? costoImportacion) =>
      _$this._costoImportacion = costoImportacion;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  int? _peso;
  int? get peso => _$this._peso;
  set peso(int? peso) => _$this._peso = peso;

  String? _tipoArticulo;
  String? get tipoArticulo => _$this._tipoArticulo;
  set tipoArticulo(String? tipoArticulo) => _$this._tipoArticulo = tipoArticulo;

  String? _enlace;
  String? get enlace => _$this._enlace;
  set enlace(String? enlace) => _$this._enlace = enlace;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  bool? _completado;
  bool? get completado => _$this._completado;
  set completado(bool? completado) => _$this._completado = completado;

  int? _idCotizacion;
  int? get idCotizacion => _$this._idCotizacion;
  set idCotizacion(int? idCotizacion) => _$this._idCotizacion = idCotizacion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CotizacionRecordBuilder() {
    CotizacionRecord._initializeBuilder(this);
  }

  CotizacionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreProducto = $v.nombreProducto;
      _precio = $v.precio;
      _fecha = $v.fecha;
      _impuestos = $v.impuestos;
      _costoImportacion = $v.costoImportacion;
      _total = $v.total;
      _peso = $v.peso;
      _tipoArticulo = $v.tipoArticulo;
      _enlace = $v.enlace;
      _uid = $v.uid;
      _completado = $v.completado;
      _idCotizacion = $v.idCotizacion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CotizacionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CotizacionRecord;
  }

  @override
  void update(void Function(CotizacionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CotizacionRecord build() => _build();

  _$CotizacionRecord _build() {
    final _$result = _$v ??
        new _$CotizacionRecord._(
            nombreProducto: nombreProducto,
            precio: precio,
            fecha: fecha,
            impuestos: impuestos,
            costoImportacion: costoImportacion,
            total: total,
            peso: peso,
            tipoArticulo: tipoArticulo,
            enlace: enlace,
            uid: uid,
            completado: completado,
            idCotizacion: idCotizacion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
