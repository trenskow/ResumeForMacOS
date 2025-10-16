//
//  HeaderPanel.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI
import SVGView

struct HeaderPanel: View {

	@DataAsset(name: "Data/Logo")
	private var logo: Data

	var body: some View {
		Panel {
			ZStack(
				alignment: .leading
			) {

				LinearGradient(
					stops: [
						.init(
							color: .resume.gradientStart,
							location: 0.0),
						.init(
							color: .resume.gradientEnd,
							location: 1.0)
					],
					startPoint: .top,
					endPoint: .bottom)

				HStack(
					spacing: 0
				) {
					ZStack {
						Image.resume.myFace
							.resizable()
							.aspectRatio(contentMode: .fit)
							.mask(
								LinearGradient(
									stops: [
										.init(
											color: .black,
											location: 0.0),
										.init(
											color: .black,
											location: 0.95),
										.init(
											color: .clear,
											location: 1.0)
									],
									startPoint: .leading,
									endPoint: .trailing))
					}
				}

				VStack(
					alignment: .trailing,
					spacing: 10
				) {

					Text("Kristian Trenskow")
						.font(.resume.urbanist.sized(
							37,
							weight: .bold))
						.foregroundStyle(Color.white)

					Needle(
						direction: .right)
					.frame(width: 321)

					VStack(
						alignment: .trailing,
						spacing: 0
					) {
						Text("iOS & Developer")
						Text("Tech Lead")
						Text("Staff Engineer")
						LocalizedText(LocalizedString(
							en: "Architect",
							da: "Arkitekt"))
					}
					.foregroundStyle(Color.white.opacity(0.5))
					.font(.resume.urbanist.sized(
						16,
						weight: .light))

					self.logo.svg
					.frame(
						width: 224.38,
						height: 100.82)

				}
				.padding(.horizontal, 120)
				.frame(
					maxWidth: .infinity,
					maxHeight: .infinity,
					alignment: .trailing)

			}
		}
		.frame(height: 434)
	}

}

#Preview {
	HeaderPanel()
		.frame(width: 926)
}
