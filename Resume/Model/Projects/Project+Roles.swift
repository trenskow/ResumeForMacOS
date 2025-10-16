//
//  Project+Roles.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	var roles: [Role] {
		switch self {
		case .threeShape: return [.developer([.iOS, .documentation])]
		case .huligennem: return [.developer([.iOS])]
		case .cph: return [.developer([.iOS])]
		case .theBirds: return [.architect, .developer([.web(.svelte), .backend(.strapi)])]
		case .finans: return [.developer([.iOS, .android, .documentation])]
		case .reliefV2: return [.developer([.iOS])]
		case .sdkV2: return [.developer([.iOS, .documentation])]
		case .panacast: return [.lead([.android, .documentation])]
		case .tinget: return [.lead([.iOS, .documentation])]
		case .lunar: return [.developer([.android, .backend(.node)])]
		case .leaHealth: return [.architect, .lead([.iOS, .android, .documentation]), .developer([.iOS, .android, .documentation])]
		case .relief: return [.developer([.iOS])]
		case .spike: return [.developer([.iOS, .web(.react), .backend(.node)])]
		case .mitYouSee: return [.developer([.iOS])]
		case .bolig: return [.developer([.iOS])]
		case .issuu: return [.developer([.iOS])]
		case .sdk: return [.architect, .developer([.iOS, .documentation])]
		case .auEvacuate: return [.architect, .designer, .developer([.iOS, .android, .backend(.node)])]
		case .auFindV2: return [.architect, .designer, .developer([.iOS, .watchOS, .backend(.node)])]
		case .taxiFix: return [.developer([.iOS])]
		case .drTv: return [.lead([.tvOS])]
		case .drNyheder: return [.architect, .developer([.iOS])]
		case .economic: return [.developer([.iOS])]
		case .one: return [.architect, .designer, .developer([.iOS])]
		case .spotable: return [.architect, .designer, .developer([.iOS])]
		case .airfloat: return [.architect, .designer, .developer([.iOS])]
		case .auFind: return [.architect, .designer, .developer([.iOS, .backend(.node)])]
		}
	}

}
