//
//  Role+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Role {

	var name: String {
		switch self {
		case .developer(let platforms):
			if let platforms {
				return "\(platforms.map { $0.name }.joined(separator: " & ")) developer"
			}
			return "Developer"
		case .designer:
			return "UI/UX"
		case .architect:
			return "Architect"
		case .lead(let platforms):
			if let platforms {
				return "\(platforms.map { $0.name }.joined(separator: " & ")) tech lead"
			}
			return "Tech lead"
		}
	}

	var shortName: String {
		switch self {
		case .developer:
			return "Developer"
		case .lead:
			return "Tech lead"
		default:
			return self.name
		}
	}

}
