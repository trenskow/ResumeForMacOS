//
//  Client+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Client {

	var name: String? {
		switch self {
		case .aarhusUniversity: return "Aarhus University"
		case .allerMedia: return "Aller Media"
		case .danskeBank: return "Danske Bank"
		case .dr: return "DR"
		case .economic: return "e-conomic"
		case .folketinget: return "Folketinget"
		case .gn: return "GN"
		case .issuu: return "Issuu"
		case .jabra: return "Jabra"
		case .kreafunk: return "Kreafunk"
		case .lego: return "LEGO"
		case .lunar: return "Lunar"
		case .me: return nil
		case .nykredit: return "Nykredit"
		case .pioneer: return "Pioneer"
		case .taxifix: return "Taxifix"
		case .theBirds: return "Fugleværnsfonden"
		case .threeShape: return "3Shape"
		case .youSee: return "YouSee"
		}
	}

	var associatedName: String? {
		switch self {
		case .folketinget: return "The Danish Parliament"
		case .dr: return "Danish Broadcasting Corporation"
		default: return nil
		}
	}

}
