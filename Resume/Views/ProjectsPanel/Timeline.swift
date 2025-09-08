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
						topLeadingRadius: 0,
						bottomLeadingRadius: 2,
						bottomTrailingRadius: 2,
						topTrailingRadius: 0
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
				.clipShape(
					.rect(
						topLeadingRadius: 2,
						bottomLeadingRadius: 0,
						bottomTrailingRadius: 0,
						topTrailingRadius: 2
					))
				.foregroundStyle(
					self.parts.contains(.bottom) ? Color.black : Color.clear
				)
		}
	}

}

#Preview {
	Timeline(
		parts: [.top, .bottom])
}
