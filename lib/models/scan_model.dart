
import 'dart:convert';

class ScanModel {
  ScanModel({
    required this.value,
    this.id,
    this.type,
  }){
    if(value.contains('http')){
      type = 'http';
    }else{
      type = 'geo';
    }
  }

  int? id;
  String value;
  String? type;

  factory ScanModel.fromRawJson(String str) =>
      ScanModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        value: json["value"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "value": value,
        "type": type,
      };
}
