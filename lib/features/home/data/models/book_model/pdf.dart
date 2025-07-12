import 'dart:convert';

import 'package:collection/collection.dart';

class Pdf {
	bool? isAvailable;

	Pdf({this.isAvailable});

	@override
	String toString() => 'Pdf(isAvailable: $isAvailable)';

	factory Pdf.fromMap(Map<String, dynamic> data) => Pdf(
				isAvailable: data['isAvailable'] as bool?,
			);

	Map<String, dynamic> toMap() => {
				'isAvailable': isAvailable,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pdf].
	factory Pdf.fromJson(String data) {
		return Pdf.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Pdf] to a JSON string.
	String toJson() => json.encode(toMap());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Pdf) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode => isAvailable.hashCode;
}
