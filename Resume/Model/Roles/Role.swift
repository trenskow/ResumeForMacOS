//
//  Role.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

enum Role {

	enum Platform {

		enum Framework {
			case svelte
			case react
		}

		enum Stack {
			case node
			case strapi
		}

		case iOS
		case macOS
		case tvOS
		case watchOS
		case android
		case web(Framework)
		case backend(Stack)
		case documentation
		case unitTests

	}

	case developer([Platform]? = nil)
	case designer
	case architect
	case lead([Platform]? = nil)

}

extension Role: CaseIterable {

	static var allCases: [Role] {
		return [
			.developer(),
			.designer,
			.architect,
			.lead()
		]
	}

}
