//
//  LocalizedString.swift
//  Resume
//
//  Created by Kristian Trenskow on 16/10/2025.
//

struct LocalizedString {

	enum Language: CaseIterable {
		case en
		case da
	}

	let en: String
	let da: String

}

extension LocalizedString {

	subscript(
		_ language: LocalizedString.Language
	) -> String {
		switch language {
		case .en: return self.en
		case .da: return self.da
		}
	}

}

extension LocalizedString.Language {

	var flag: String {
		switch self {
		case .en: return "🇺🇸"
		case .da: return "🇩🇰"
		}
	}

}

extension LocalizedString: ExpressibleByStringLiteral {

	init(
		_ value: String
	) {
		self.init(
			en: value,
			da: value)
	}

	init(
		stringLiteral value: String
	) {
		self.init(
			value)
	}

}
