//
//  Project+Languages.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	var languages: [Language] {
		switch self {
		case .threeShape: return [.swift, .c, .cpp]
		case .huligennem: return [.swift]
		case .cph: return [.swift, .objectiveC]
		case .theBirds: return [.typeScript, .javaScript]
		case .finans: return [.swift, .kotlin]
		case .reliefV2: return [.swift]
		case .sdkV2: return [.swift, .c, .cpp, .objectiveC]
		case .panacast: return [.kotlin]
		case .tinget: return [.swift]
		case .lunar: return [.kotlin, .java]
		case .leaHealth: return [.swift, .kotlin]
		case .relief: return [.swift]
		case .spike: return [.swift, .typeScript]
		case .mitYouSee: return [.swift]
		case .bolig: return [.swift]
		case .issuu: return [.swift]
		case .sdk: return [.swift, .c, .cpp, .objectiveC]
		case .auEvacuate: return [.swift, .java]
		case .auFindV2: return [.swift]
		case .taxiFix: return [.objectiveC]
		case .drTv: return [.swift]
		case .drNyheder: return [.swift]
		case .economic: return [.objectiveC]
		case .one: return [.objectiveC]
		case .spotable: return [.objectiveC]
		case .airfloat: return [.objectiveC, .c]
		case .auFind: return [.objectiveC]
		case .zeroBitGames: return [.c, .cpp, .java, .javaScript, .kotlin, .swift, .typeScript, .lua]
		}
	}

}
