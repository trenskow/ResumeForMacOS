//
//  Subheader.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Subheader: View {

	let text: String

	init(
		text: String
	) {
		self.text = text
	}

	var body: some View {
		Text(self.text)
			.font(.resume.urbanist
				.sized(
					24,
					weight: .bold))
	}

}
