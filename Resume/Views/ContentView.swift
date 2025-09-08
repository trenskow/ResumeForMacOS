//
//  ContentView.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack(
			spacing: 30
		) {

			HeaderPanel()

			Text(
				verbatim: "this.is@kristians.email | +45 26 66 22 37")
				.font(
					.resume.workSans
						.sized(
							16,
							weight: .light))
				.foregroundStyle(.black)

			ClientsPanel()

			QualificationsPanel()

			ProjectsPanel()

		}
		.padding(30)
		.frame(width: 986)
	}
}

#Preview {
	ContentView()
}
