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

	@State var renderer: Renderer<ContentView>?

	private var content: ContentView {
		ContentView()
	}

	var body: some Scene {
		WindowGroup {
			ScrollView {
				self.content
					.environment(\.colorScheme, .light)
					.foregroundStyle(.black)
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

						self.renderer = Renderer(
							url: url,
							content: self.content)

						self.renderer?.render()

					}
				}

			}
		}
	}
}

