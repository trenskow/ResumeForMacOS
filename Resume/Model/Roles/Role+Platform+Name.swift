//
//  Role+Platform+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Role.Platform {

	var name: LocalizedString {
		switch self {
		case .iOS: return "iOS"
		case .macOS: return "macOS"
		case .tvOS: return "tvOS"
		case .watchOS: return "watchOS"
		case .android: return "Android"
		case .web(let framework):
			return LocalizedString(
				"\(framework.name) web frontend")
		case .backend(let stack):
			return LocalizedString(
				"\(stack.name) backend")
		case .documentation:
			return LocalizedString(
				en: "Docs",
				da: "Doks")
		}
	}

}
