//
//  Header.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Header: View {

	let text: LocalizedString
	let additionalText: LocalizedString?

	init(
		text: LocalizedString,
		additionalText: LocalizedString? = nil
	) {
		self.text = text
		self.additionalText = additionalText
	}

	var body: some View {
		HStack(
			alignment: .firstTextBaseline,
			spacing: 8
		) {

			LocalizedText(self.text)
				.font(.resume.urbanist
					.sized(
						36,
						weight: .bold))

			if let additionalText = self.additionalText {

				LocalizedText(additionalText)
					.font(.resume.urbanist
						.sized(
							14,
							weight: .light))
					.opacity(0.25)

			}

		}
		.foregroundStyle(Color.black)
	}

}
