//
//  Project.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

enum Project: CaseIterable {
	case zeroBitGames
	case threeShape
	case huligennem
	case cph
	case theBirds
	case finans
	case reliefV2
	case sdkV2
	case panacast
	case tinget
	case lunar
	case leaHealth
	case relief
	case spike
	case mitYouSee
	case bolig
	case issuu
	case sdk
	case auEvacuate
	case auFindV2
	case taxiFix
	case drTv
	case drNyheder
	case economic
	case one
	case spotable
	case airfloat
	case auFind
}

extension Project {

	static var timeline: [Project] {
		return Project.allCases
			.sorted { project1, project2 in
				if project1.timespan.year == project2.timespan.year {
					return project1.timespan.month.rawValue > project2.timespan.month.rawValue
				}
				return project1.timespan.year > project2.timespan.year
			}
	}

}
