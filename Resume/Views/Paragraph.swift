//
//  Paragraph.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Paragraph: View {

	let text: [String]

	init(
		text: String
	) {
		self.text = text
			.components(separatedBy: "\n")
	}

	var body: some View {
		VStack(
			alignment: .leading,
			spacing: 20
		) {
			ForEach(self.text, id: \.self) { line in
				Text(line)
					.multilineTextAlignment(.leading)
			}
		}
		.font(
			Font.resume.workSans
				.sized(
					14,
					weight: .regular))
	}

}
