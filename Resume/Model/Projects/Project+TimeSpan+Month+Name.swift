//
//  Project+TimeSpan+Month+Name.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project.Timespan.Month {

	var name: LocalizedString {
		switch self {
		case .january: return .init(
			en: "January",
			da: "Januar")
		case .february: return .init(
			en: "February",
			da: "Februar")
		case .march: return .init(
			en: "March",
			da: "Marts")
		case .april: return .init(
			en: "April",
			da: "April")
		case .may: return .init(
			en: "May",
			da: "Maj")
		case .june: return .init(
			en: "June",
			da: "Juni")
		case .july: return .init(
			en: "July",
			da: "Juli")
		case .august: return .init(
			en: "August",
			da: "August")
		case .september: return .init(
			en: "September",
			da: "September")
		case .october: return .init(
			en: "October",
			da: "Oktober")
		case .november: return .init(
			en: "November",
			da: "November")
		case .december: return .init(
			en: "December",
			da: "December")
		}
	}

}
