//
//  Paragraph.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Paragraph: View {

	let text: AttributedString

	init(
		text: String
	) {
		var attributedText = AttributedString(text
			.replacingOccurrences(of: "\n", with: "\n\n"))
		attributedText.foregroundColor = .black
		self.text = attributedText
	}

	var body: some View {
		Text(self.text)
			.multilineTextAlignment(.leading)
			.fixedSize(
				horizontal: false,
				vertical: true)
			.font(
				Font.resume.workSans
					.sized(
						14,
						weight: .regular))
			.foregroundStyle(.black)
	}

}
