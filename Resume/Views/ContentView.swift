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

			ContactLine()

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
