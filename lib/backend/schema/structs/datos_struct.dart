// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatosStruct extends BaseStruct {
  DatosStruct({
    int? componente,
    List<String>? equipo,
    List<int>? cantidad,
    List<int>? usoDiario,
  })  : _componente = componente,
        _equipo = equipo,
        _cantidad = cantidad,
        _usoDiario = usoDiario;

  // "componente" field.
  int? _componente;
  int get componente => _componente ?? 0;
  set componente(int? val) => _componente = val;
  void incrementComponente(int amount) => _componente = componente + amount;
  bool hasComponente() => _componente != null;

  // "equipo" field.
  List<String>? _equipo;
  List<String> get equipo => _equipo ?? const [];
  set equipo(List<String>? val) => _equipo = val;
  void updateEquipo(Function(List<String>) updateFn) =>
      updateFn(_equipo ??= []);
  bool hasEquipo() => _equipo != null;

  // "cantidad" field.
  List<int>? _cantidad;
  List<int> get cantidad => _cantidad ?? const [];
  set cantidad(List<int>? val) => _cantidad = val;
  void updateCantidad(Function(List<int>) updateFn) =>
      updateFn(_cantidad ??= []);
  bool hasCantidad() => _cantidad != null;

  // "uso_diario" field.
  List<int>? _usoDiario;
  List<int> get usoDiario => _usoDiario ?? const [];
  set usoDiario(List<int>? val) => _usoDiario = val;
  void updateUsoDiario(Function(List<int>) updateFn) =>
      updateFn(_usoDiario ??= []);
  bool hasUsoDiario() => _usoDiario != null;

  static DatosStruct fromMap(Map<String, dynamic> data) => DatosStruct(
        componente: castToType<int>(data['componente']),
        equipo: getDataList(data['equipo']),
        cantidad: getDataList(data['cantidad']),
        usoDiario: getDataList(data['uso_diario']),
      );

  static DatosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? DatosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'componente': _componente,
        'equipo': _equipo,
        'cantidad': _cantidad,
        'uso_diario': _usoDiario,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'componente': serializeParam(
          _componente,
          ParamType.int,
        ),
        'equipo': serializeParam(
          _equipo,
          ParamType.String,
          true,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
          true,
        ),
        'uso_diario': serializeParam(
          _usoDiario,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static DatosStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatosStruct(
        componente: deserializeParam(
          data['componente'],
          ParamType.int,
          false,
        ),
        equipo: deserializeParam<String>(
          data['equipo'],
          ParamType.String,
          true,
        ),
        cantidad: deserializeParam<int>(
          data['cantidad'],
          ParamType.int,
          true,
        ),
        usoDiario: deserializeParam<int>(
          data['uso_diario'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'DatosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DatosStruct &&
        componente == other.componente &&
        listEquality.equals(equipo, other.equipo) &&
        listEquality.equals(cantidad, other.cantidad) &&
        listEquality.equals(usoDiario, other.usoDiario);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([componente, equipo, cantidad, usoDiario]);
}

DatosStruct createDatosStruct({
  int? componente,
}) =>
    DatosStruct(
      componente: componente,
    );
