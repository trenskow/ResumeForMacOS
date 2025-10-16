//
//  ClientsPanel.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct ClientsPanel: View {

	var body: some View {
		Panel {
			VStack(
				alignment: .leading,
				spacing: 60
			) {

				Header(
					text: LocalizedString(
						en: "Clients",
						da: "Kunder"),
					additionalText: LocalizedString(
						en: "(Selected)",
						da: "(Udvalgte)"))

				VStack(
					spacing: 30
				) {

					ClientsRow(
						clients: [
							.threeShape,
							.danskeBank,
							.allerMedia,
							.dr,
							.economic,
							.gn
						])

					ClientsRow(
						clients: [
							.folketinget,
							.theBirds,
							.issuu,
							.jabra,
							.lego
						])

					ClientsRow(
						clients: [
							.kreafunk,
							.lunar,
							.nykredit,
							.pioneer,
							.youSee
						])

				}

			}
			.padding(.vertical, 120)
			.padding(.leading, 198)
			.padding(.trailing, 120)
		}
	}

}

#Preview {
	ClientsPanel()
		.frame(width: 926)
}
