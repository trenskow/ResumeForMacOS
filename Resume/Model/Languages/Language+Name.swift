//
//  Language+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Language {

	var name: String {
		switch self {
		case .c: return "C"
		case .cpp: return "C++"
		case .java: return "Java"
		case .javaScript: return "JavaScript"
		case .kotlin: return "Kotlin"
		case .swift: return "Swift"
		case .typeScript: return "TypeScript"
		case .objectiveC: return "Objective-C"
		case .lua: return "Lua"
		}
	}

}
