//
//  Project+TimeSpan+Month+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project.Timespan.Month {

	var name: String {
		switch self {
		case .january: return "January"
		case .february: return "February"
		case .march: return "March"
		case .april: return "April"
		case .may: return "May"
		case .june: return "June"
		case .july: return "July"
		case .august: return "August"
		case .september: return "September"
		case .october: return "October"
		case .november: return "November"
		case .december: return "December"
		}
	}

}
