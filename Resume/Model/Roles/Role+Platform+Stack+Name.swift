//
//  Role+Platform+Stack+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Role.Platform.Stack {

	var name: String {
		switch self {
		case .node: return "Node.js"
		case .strapi: return "Strapi"
		}
	}

}
