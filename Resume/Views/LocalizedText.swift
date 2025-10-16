//
//  LocalizedText.swift
//  Resume
//
//  Created by Kristian Trenskow on 16/10/2025.
//

import SwiftUI

struct LocalizedText: View {

	@Environment(\.localizedStringLanguage) private var localizedStringLanguage

	let localizedString: LocalizedString
	let transform: @MainActor @Sendable (String) -> String

	init(
		_ localizedString: LocalizedString,
		_ transform: @Sendable @escaping (String) -> String = { $0 }
	) {
		self.localizedString = localizedString
		self.transform = transform
	}

	var body: some View {
		Text(verbatim: self.transform(self.localizedString[self.localizedStringLanguage]))
	}

}

