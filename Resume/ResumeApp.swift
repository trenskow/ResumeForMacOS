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
	}

	var body: some Scene {
		WindowGroup {
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

						do {
							try self.content.render(into: url)
						}
						catch {
							print("Failed to render PDF: \(error)")
						}

					}
				}

			}
		}
	}
}

