//
//  Panel.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Panel<Content: View>: View {

	let content: () -> Content

	init(
		@ViewBuilder content: @escaping () -> Content
	) {
		self.content = content
	}

	var body: some View {
		Group {
			self.content()
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.background {
			Color.resume.panelBackground
				.cornerRadius(16)
		}
		.clipShape(RoundedRectangle(cornerRadius: 16))
	}

}
