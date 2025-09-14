//
//  Contractor+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 14/09/2025.
//

extension Contractor {

	var name: String {
		switch self {
		case .devoteam: return "Jayway by Devoteam"
		case .digitalFireworks: return "Digital Fireworks"
		case .emagine: return "emagine"
		case .epico: return "Epico"
		case .framna: return "Framna"
		case .mjolner: return "Mjølner Informatics"
		case .mpeople: return "mpeople"
		case .needConsult: return "NeedConsult"
		}
	}

}
