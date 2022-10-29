import 'dart:convert';

class ValChangeModel {
  String status;
  String data;
  ValChangeModel({
    required this.status,
    required this.data,
  });

  ValChangeModel copyWith({
    String? status,
    String? data,
  }) {
    return ValChangeModel(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'data': data,
    };
  }

  factory ValChangeModel.fromMap(Map<String, dynamic> map) {
    return ValChangeModel(
      status: map['status'] ?? '',
      data: map['data'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ValChangeModel.fromJson(String source) =>
      ValChangeModel.fromMap(json.decode(source));

  @override
  String toString() => 'ValChangeModel(status: $status, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValChangeModel &&
        other.status == status &&
        other.data == data;
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
