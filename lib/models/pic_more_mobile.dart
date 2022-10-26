import 'dart:convert';

class PicMoreMobile {
  String picSrc;
  PicMoreMobile({
    required this.picSrc,
  });

  PicMoreMobile copyWith({
    String? picSrc,
  }) {
    return PicMoreMobile(
      picSrc: picSrc ?? this.picSrc,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'picSrc': picSrc,
    };
  }

  factory PicMoreMobile.fromMap(Map<String, dynamic> map) {
    return PicMoreMobile(
      picSrc: map['picSrc'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PicMoreMobile.fromJson(String source) =>
      PicMoreMobile.fromMap(json.decode(source));

  @override
  String toString() => 'PicMoreMobile(picSrc: $picSrc)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PicMoreMobile && other.picSrc == picSrc;
  }

  @override
  int get hashCode => picSrc.hashCode;
}
