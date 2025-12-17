//
//  ProjectsHeader.swift
//  Resume
//
//  Created by Kristian Trenskow on 17/12/2025.
//

import SwiftUI

@MainActor
struct ProjectsHeader: View {

	var body: some View {

		HStack(
			spacing: 20
		) {

			Rectangle()
				.frame(width: 108)
				.foregroundStyle(.clear)

			Timeline(
				parts: [.bottom])

			Header(
				text: LocalizedString(
					en: "Projects",
					da: "Projekter"))
			.frame(height: 45)
			.padding(.vertical, 60)

		}
		.frame(
			maxWidth: .infinity,
			alignment: .leading)

	}

}

