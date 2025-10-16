//
//  Role+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Role {

	var name: LocalizedString {
		switch self {
		case .developer(let platforms):
			if let platforms {
				return LocalizedString(
					en: "\(platforms.map { $0.name.en }.joined(separator: " & ")) developer",
					da: "\(platforms.map { $0.name.da }.joined(separator: "- & "))-udvikler")
			}
			return LocalizedString(
				en: "Developer",
				da: "Udvikler")
		case .designer:
			return LocalizedString(
				en: "UI/UX",
				da: "UI/UX")
		case .architect:
			return LocalizedString(
				en: "Architect",
				da: "Arkitekt")
		case .lead(let platforms):
			if let platforms {
				return LocalizedString(
					en: "\(platforms.map { $0.name.en }.joined(separator: " & ")) tech lead",
					da: "\(platforms.map { $0.name.da }.joined(separator: "- & "))-leder")
			}
			return LocalizedString(
				en: "Tech lead",
				da: "Leder")
		}
	}

	var shortName: LocalizedString {
		switch self {
		case .developer:
			return LocalizedString(
				en: "Developer",
				da: "Udvikler")
		case .lead:
			return LocalizedString(
				en: "Tech lead",
				da: "Leder")
		default:
			return self.name
		}
	}

}
