//
//  ResumeApp.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI
import UniformTypeIdentifiers

@main
struct ResumeApp: App {

	private var content: some View {
		ContentView()
			.foregroundStyle(.black)
	}

	var body: some Scene {
		Window("Kristian Trenskow's Resume", id: "main") {
			ScrollView {
				self.content
			}
		}
		.commands {
			CommandMenu("Actions") {

				Button("Generate PDF…") {
					Task {

						let savePanel = NSSavePanel()

						savePanel.nameFieldStringValue = "Resume.pdf"
						savePanel.allowedContentTypes = [.pdf]

						guard await savePanel.begin() == .OK,
							  let url = savePanel.url
						else { return }

						await self.content
							.saveAsPDF(
								url: url)

						NSWorkspace.shared.open(url)

					}
				}

			}
		}
	}
}

