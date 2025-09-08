//
//  Project+Roles.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	var roles: [Role] {
		switch self {
		case .threeShape: return [.developer([.iOS])]
		case .huligennem: return [.developer([.iOS])]
		case .theBirds: return [.architect, .developer([.web(.svelte), .backend(.strapi)])]
		case .finans: return [.developer([.iOS, .android])]
		case .reliefV2: return [.developer([.iOS])]
		case .sdkV2: return [.developer([.iOS])]
		case .panacast: return [.lead([.android])]
		case .tinget: return [.lead([.iOS])]
		case .lunar: return [.developer([.android])]
		case .leaHealth: return [.architect, .lead([.iOS, .android]), .developer([.iOS, .android])]
		case .relief: return [.developer([.iOS])]
		case .spike: return [.developer([.iOS, .web(.react)])]
		case .mitYouSee: return [.developer([.iOS])]
		case .bolig: return [.developer([.iOS])]
		case .issuu: return [.developer([.iOS])]
		case .sdk: return [.architect, .developer([.iOS])]
		case .auEvacuate: return [.architect, .designer, .developer([.iOS, .android])]
		case .auFindV2: return [.architect, .designer, .developer([.iOS, .watchOS])]
		case .taxiFix: return [.developer([.iOS])]
		case .drTv: return [.lead([.tvOS])]
		case .drNyheder: return [.architect, .developer([.iOS])]
		case .economic: return [.developer([.iOS])]
		case .one: return [.architect, .designer, .developer([.iOS])]
		case .spotable: return [.architect, .designer, .developer([.iOS])]
		case .airfloat: return [.architect, .designer, .developer([.iOS])]
		case .auFind: return [.architect, .designer, .developer([.iOS])]
		}
	}

}
