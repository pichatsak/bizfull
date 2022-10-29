import 'dart:convert';

class ChooseDeliModel {
  String choose;
  String type;
  ChooseDeliModel({
    required this.choose,
    required this.type,
  });

  ChooseDeliModel copyWith({
    String? choose,
    String? type,
  }) {
    return ChooseDeliModel(
      choose: choose ?? this.choose,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'choose': choose,
      'type': type,
    };
  }

  factory ChooseDeliModel.fromMap(Map<String, dynamic> map) {
    return ChooseDeliModel(
      choose: map['choose'] ?? '',
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChooseDeliModel.fromJson(String source) =>
      ChooseDeliModel.fromMap(json.decode(source));

  @override
  String toString() => 'ChooseDeliModel(choose: $choose, type: $type)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChooseDeliModel &&
        other.choose == choose &&
        other.type == type;
  }

  @override
  int get hashCode => choose.hashCode ^ type.hashCode;
}
