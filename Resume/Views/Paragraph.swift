//
//  Paragraph.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Paragraph: View {

	@Environment(\.localizedStringLanguage) private var localizedStringLanguage

	let text: LocalizedString

	init(
		text: LocalizedString
	) {
		self.text = text
	}

	var body: some View {
		Text(self.attributedString)
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

	private var attributedString: AttributedString {
		var attributedText = AttributedString(text[self.localizedStringLanguage]
			.replacingOccurrences(of: "\n", with: "\n\n"))
		attributedText.foregroundColor = .black
		return attributedText
	}

}
