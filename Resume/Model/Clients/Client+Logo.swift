//
//  Client+Logo.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import Foundation

extension Client {

	struct Logo {
		let dataName: String
		let width: CGFloat
		let offsetY: CGFloat
	}

	var logo: Logo? {
		switch self {
		case .threeShape:
			return .init(
				dataName: "Data/ClientLogos/ThreeShape",
				width: 94,
				offsetY: 0)
		case .danskeBank:
			return .init(
				dataName: "Data/ClientLogos/DanskeBank",
				width: 133,
				offsetY: 0)
		case .allerMedia:
			return .init(
				dataName: "Data/ClientLogos/AllerMedia",
				width: 25,
				offsetY: 0)
		case .dr:
			return .init(
				dataName: "Data/ClientLogos/DR",
				width: 66,
				offsetY: 0)
		case .economic:
			return .init(
				dataName: "Data/ClientLogos/Economic",
				width: 75,
				offsetY: 0)
		case .gn:
			return .init(
				dataName: "Data/ClientLogos/GN",
				width: 43,
				offsetY: 0)
		case .folketinget:
			return .init(
				dataName: "Data/ClientLogos/Folketinget",
				width: 215,
				offsetY: 0)
		case .theBirds:
			return .init(
				dataName: "Data/ClientLogos/TheBirds",
				width: 54,
				offsetY: 0)
		case .issuu:
			return .init(
				dataName: "Data/ClientLogos/Issuu",
				width: 85,
				offsetY: 0)
		case .jabra:
			return .init(
				dataName: "Data/ClientLogos/Jabra",
				width: 59,
				offsetY: 0)
		case .lego:
			return .init(
				dataName: "Data/ClientLogos/Lego",
				width: 20,
				offsetY: 0)
		case .kreafunk:
			return .init(
				dataName: "Data/ClientLogos/Kreafunk",
				width: 75,
				offsetY: 0)
		case .lunar:
			return .init(
				dataName: "Data/ClientLogos/Lunar",
				width: 59,
				offsetY: -1)
		case .nykredit:
			return .init(
				dataName: "Data/ClientLogos/Nykredit",
				width: 124,
				offsetY: 1)
		case .pioneer:
			return .init(
				dataName: "Data/ClientLogos/Pioneer",
				width: 136,
				offsetY: -3)
		case .youSee:
			return .init(
				dataName: "Data/ClientLogos/YouSee",
				width: 75,
				offsetY: 0)
		default: return nil
		}
	}

}
