//
//  Project+Timespan.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	struct Timespan {

		enum Month: Int {
			case january  = 1
			case february
			case march
			case april
			case may
			case june
			case july
			case august
			case september
			case october
			case november
			case december
		}

		let year: Int
		let month: Month
		let durationMonths: Int

	}

	var timespan: Timespan {
		switch self {
		case .airfloat: return .init(year: 2012, month: .may, durationMonths: 6)
		case .auEvacuate: return .init(year: 2017, month: .january, durationMonths: 6)
		case .auFind: return .init(year: 2011, month: .january, durationMonths: 3)
		case .auFindV2: return .init(year: 2016, month: .september, durationMonths: 3)
		case .bolig: return .init(year: 2019, month: .april, durationMonths: 3)
		case .cph: return .init(year: 2024, month: .july, durationMonths: 3)
		case .drNyheder: return .init(year: 2015, month: .july, durationMonths: 3)
		case .drTv: return .init(year: 2015, month: .october, durationMonths: 3)
		case .economic: return .init(year: 2014, month: .october, durationMonths: 5)
		case .finans: return .init(year: 2024, month: .march, durationMonths: 1)
		case .huligennem: return .init(year: 2024, month: .july, durationMonths: 3)
		case .issuu: return .init(year: 2019, month: .february, durationMonths: 2)
		case .leaHealth: return .init(year: 2021, month: .april, durationMonths: 5)
		case .lunar: return .init(year: 2021, month: .september, durationMonths: 10)
		case .mitYouSee: return .init(year: 2019, month: .october, durationMonths: 3)
		case .one: return .init(year: 2014, month: .july, durationMonths: 4)
		case .panacast: return .init(year: 2022, month: .august, durationMonths: 4)
		case .relief: return .init(year: 2021, month: .july, durationMonths: 3)
		case .reliefV2: return .init(year: 2023, month: .september, durationMonths: 1)
		case .sdk: return .init(year: 2017, month: .september, durationMonths: 15)
		case .sdkV2: return .init(year: 2023, month: .january, durationMonths: 15)
		case .spike: return .init(year: 2020, month: .august, durationMonths: 4)
		case .spotable: return .init(year: 2013, month: .january, durationMonths: 3)
		case .taxiFix: return .init(year: 2016, month: .january, durationMonths: 12)
		case .theBirds: return .init(year: 2024, month: .april, durationMonths: 6)
		case .threeShape: return .init(year: 2024, month: .october, durationMonths: 5)
		case .tinget: return .init(year: 2022, month: .august, durationMonths: 4)
		case .zeroBitGames: return .init(year: 2025, month: .may, durationMonths: 8)
		}
	}

}
