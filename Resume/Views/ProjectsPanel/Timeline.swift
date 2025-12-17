//
//  Timeline.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Timeline: View {

	struct Part: OptionSet {

		let rawValue: UInt

		static let top = Part(rawValue: 1 << 0)
		static let bottom = Part(rawValue: 1 << 1)

	}

	@Environment(\.renderContext) var renderContext

	@DataAsset(name: "Data/NeedleHeadBlack")
	private var needleHeadBlack: Data

	let parts: Part

	init(
		parts: Part = [.top, .bottom]
	) {
		self.parts = parts
	}

	var body: some View {

		VStack(
			alignment: .center,
			spacing: 4
		) {

			Rectangle()
				.frame(
					width: 4,
					height: 68)
				.clipShape(
					.rect(
						topLeadingRadius: self.renderContext == .screen ? 0 : 2,
						bottomLeadingRadius: 2,
						bottomTrailingRadius: 2,
						topTrailingRadius: self.renderContext == .screen ? 0 : 2
					))
				.foregroundStyle(
					self.parts.contains(.top) ? Color.black : Color.clear
				)

			self.needleHeadBlack.svg
				.frame(width: 20, height: 20)

			Rectangle()
				.frame(
					width: 4)
				.frame(
					maxHeight: .infinity)
				.fixedSize(
					horizontal: true,
					vertical: false)
				.clipShape(
					.rect(
						topLeadingRadius: 2,
						bottomLeadingRadius: self.renderContext == .screen ? 0 : 2,
						bottomTrailingRadius: self.renderContext == .screen ? 0 : 2,
						topTrailingRadius: 2
					))
				.foregroundStyle(
					self.parts.contains(.bottom) ? Color.black : Color.clear
				)
		}
		.frame(
			maxHeight: .infinity)
	}

}

#Preview {
	Timeline(
		parts: [.top, .bottom])
}
