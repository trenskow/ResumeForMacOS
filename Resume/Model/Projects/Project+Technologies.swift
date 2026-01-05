//
//  Project+Technologies.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	var technologies: [Technology]? {
		switch self {
		case .threeShape: return [.metal, .swiftUI, .uiKit]
		case .huligennem: return [.swiftUI]
		case .cph: return [.swiftUI, .uiKit]
		case .theBirds: return nil
		case .finans: return [.swiftUI, .uiKit]
		case .reliefV2: return [.swiftUI, .uiKit]
		case .sdkV2: return [.uiKit, .coreBluetooth, .externalAccessories]
		case .panacast: return [.compose]
		case .tinget: return [.uiKit]
		case .lunar: return [.compose, .androidSDK]
		case .leaHealth: return [.swiftUI, .compose]
		case .relief: return [.swiftUI, .uiKit]
		case .spike: return [.coreBluetooth]
		case .mitYouSee: return [.uiKit]
		case .bolig: return [.uiKit]
		case .issuu: return [.uiKit]
		case .sdk: return [.uiKit, .coreBluetooth, .externalAccessories]
		case .auEvacuate: return [.uiKit, .androidSDK, .mongoDb]
		case .auFindV2: return [.uiKit]
		case .taxiFix: return [.uiKit]
		case .drTv: return [.uiKit]
		case .drNyheder: return [.uiKit]
		case .economic: return [.uiKit]
		case .one: return [.uiKit]
		case .spotable: return [.uiKit]
		case .airfloat: return [.uiKit]
		case .auFind: return [.uiKit]
		case .zeroBitGames: return [.uiKit, .androidSDK, .compose, .swiftUI, .uiKit]
		}
	}

}
