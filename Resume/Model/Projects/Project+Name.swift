//
//  Project+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	var name: String {
		switch self {
		case .airfloat: return "AirFloat"
		case .auEvacuate: return "AU Evacuate"
		case .auFind: return "AU Find"
		case .auFindV2: return "AU Find 2"
		case .bolig: return "Bolig"
		case .drNyheder: return "DR Nyheder"
		case .drTv: return "DR TV"
		case .economic: return "e-conomic"
		case .finans: return "Finans"
		case .huligennem: return "HULiGENNEM"
		case .issuu: return "Issuu"
		case .leaHealth: return "Lea Health"
		case .lunar: return "Lunar"
		case .mitYouSee: return "Mit YouSee"
		case .one: return "ONE"
		case .panacast: return "Panacast 50 VBS"
		case .relief, .reliefV2: return "Relief"
		case .sdk, .sdkV2: return "SDK & Sound+"
		case .spike: return "SPIKE"
		case .spotable: return "Spotable"
		case .taxiFix: return "TaxiFix"
		case .theBirds: return "Website"
		case .threeShape: return "3Shape"
		case .tinget: return "Tinget"
		}
	}

}
