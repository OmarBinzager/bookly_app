import 'dart:convert';

import 'package:collection/collection.dart';

class SearchInfo {
	String? textSnippet;

	SearchInfo({this.textSnippet});

	@override
	String toString() => 'SearchInfo(textSnippet: $textSnippet)';

	factory SearchInfo.fromMap(Map<String, dynamic> data) => SearchInfo(
				textSnippet: data['textSnippet'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'textSnippet': textSnippet,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SearchInfo].
	factory SearchInfo.fromJson(String data) {
		return SearchInfo.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [SearchInfo] to a JSON string.
	String toJson() => json.encode(toMap());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! SearchInfo) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode => textSnippet.hashCode;
}
