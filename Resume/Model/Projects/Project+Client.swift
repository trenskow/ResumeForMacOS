//
//  Project+Client.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	var client: Client {
		switch self {
		case .airfloat: return .me
		case .auEvacuate: return .aarhusUniversity
		case .auFind: return .aarhusUniversity
		case .auFindV2: return .aarhusUniversity
		case .bolig: return .danskeBank
		case .cph: return .copenhagenAirport
		case .drTv: return .dr
		case .drNyheder: return .dr
		case .economic: return .economic
		case .finans: return .nykredit
		case .huligennem: return .allerMedia
		case .issuu: return .issuu
		case .leaHealth: return .gn
		case .lunar: return .lunar
		case .mitYouSee: return .youSee
		case .one: return .kreafunk
		case .panacast: return .jabra
		case .relief: return .gn
		case .reliefV2: return .gn
		case .sdk: return .jabra
		case .sdkV2: return .jabra
		case .spike: return .lego
		case .spotable: return .pioneer
		case .taxiFix: return .taxifix
		case .theBirds: return .theBirds
		case .threeShape: return .threeShape
		case .tinget: return .folketinget
		}
	}

}
