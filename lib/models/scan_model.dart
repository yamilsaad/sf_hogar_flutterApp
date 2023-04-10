// To parse this JSON data, do
//
//     final scanModel = scanModelFromJson(jsonString);

import 'dart:convert';

ScanModel scanModelFromJson(String str) => ScanModel.fromJson(json.decode(str));

String scanModelToJson(ScanModel data) => json.encode(data.toJson());

class ScanModel {
  ScanModel({
    required this.apellido,
    required this.nombre,
    required this.sexo,
    required this.dni,
    required this.fecha,
  });

  String apellido;
  String nombre;
  String sexo;
  int dni;
  String fecha;

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        apellido: json["apellido"],
        nombre: json["nombre"],
        sexo: json["sexo"],
        dni: json["dni"],
        fecha: json["fecha"],
      );

  Map<String, dynamic> toJson() => {
        "apellido": apellido,
        "nombre": nombre,
        "sexo": sexo,
        "dni": dni,
        "fecha": fecha,
      };
}
