//
//  Subheader.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Subheader: View {

	let text: LocalizedString

	init(
		text: LocalizedString
	) {
		self.text = text
	}

	var body: some View {
		LocalizedText(self.text)
			.font(.resume.urbanist
				.sized(
					24,
					weight: .bold))
	}

}
