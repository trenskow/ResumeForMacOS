//
//  Stack.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Stack<Content: View>: View {

	let direction: StackDirection
	let alignment: Alignment
	let spacing: CGFloat?

	let content: () -> Content

	init(
		direction: StackDirection,
		alignment: Alignment = .center,
		spacing: CGFloat?,
		@ViewBuilder content: @escaping () -> Content
	) {
		self.direction = direction
		self.alignment = alignment
		self.spacing = spacing
		self.content = content
	}

	var body: some View {

		switch self.direction {
		case .horizontal:

			HStack(
				alignment: self.alignment.vertical,
				spacing: self.spacing
			) {
				self.content()
			}

		case .vertical:

			VStack(
				alignment: self.alignment.horizontal,
				spacing: self.spacing
			) {
				self.content()
			}

		}

	}

}
