//
//  Project+Contractor.swift
//  Resume
//
//  Created by Kristian Trenskow on 14/09/2025.
//

extension Project {

	var contractor: Contractor? {
		switch self {
		case.threeShape, .huligennem, .cph:
			return .framna
		case .theBirds, .finans, .reliefV2:
			return .digitalFireworks
		case .sdkV2, .panacast:
			return .needConsult
		case .tinget, .relief, .leaHealth:
			return .devoteam
		case .lunar:
			return .mjolner
		case .spike, .sdk:
			return .mpeople
		case .mitYouSee:
			return .epico
		case .bolig, .taxiFix:
			return .emagine
		default:
			return nil
		}
	}

}
