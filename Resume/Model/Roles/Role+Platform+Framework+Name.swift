//
//  Role+Platform+Framework+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Role.Platform.Framework {

	var name: String {
		switch self {
		case .react: return "React"
		case .svelte: return "Svelte"
		}
	}

}
