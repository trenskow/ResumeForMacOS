//
//  Techonlogy+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Technology {

	var name: String {
		switch self {
		case .androidSDK: return "Android SDK"
		case .compose: return "Compose"
		case .coreBluetooth: return "Core Bluetooth"
		case .externalAccessories: return "External Accessories"
		case .metal: return "Metal"
		case .mongoDb: return "MongoDB"
		case .swiftUI: return "SwiftUI"
		case .uiKit: return "UIKit"
		}
	}

}
