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

	@State private var localizedStringLanguage: LocalizedString.Language = .en

	private var content: some View {
		ContentView()
			.foregroundStyle(.black)
	}

	var body: some Scene {
		#if os(iOS)
		WindowGroup {
			GeometryReader { proxy in
				ScrollView {
					self.content
						.compositingGroup()
						.scaleEffect(
							proxy.size.width / 986,
							anchor: .topLeading)
				}
				.frame(
					maxWidth: .infinity,
					maxHeight: .infinity,
					alignment: .center)
			}
		}
		#elseif os(macOS)
		Window("Kristian Trenskow's Resume", id: "main") {
			ScrollView {
				Group {
					self.content
				}
				.frame(
					maxWidth: .infinity,
					alignment: .center)
			}
			.toolbar {
				Picker("Language", selection: self.$localizedStringLanguage) {
					ForEach(LocalizedString.Language.allCases, id: \.self) { language in
						Text(language.flag)
							.tag(language)
					}
				}
			}
			.environment(
				\.localizedStringLanguage,
				 self.localizedStringLanguage)
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

						await CGContext.pdf(
							url: url) { pdf in

								await HeaderPanel()
									.renderLaidOutPage(
										toPDF: pdf,
										localizedStringLanguage: self.localizedStringLanguage)

								await ContactLine()
									.renderLaidOutPage(
										toPDF: pdf,
										localizedStringLanguage: self.localizedStringLanguage)

								await ClientsPanel()
									.renderLaidOutPage(
										toPDF: pdf,
										localizedStringLanguage: self.localizedStringLanguage)

								await QualificationsPanel()
									.renderLaidOutPage(
										toPDF: pdf,
										localizedStringLanguage: self.localizedStringLanguage)

								await ProjectsHeader()
									.projectLayout()
									.renderLaidOutPage(
										toPDF: pdf,
										localizedStringLanguage: self.localizedStringLanguage)

								let timeline = Project.timeline

								for project in timeline {
									await ProjectView(
										project: project)
										.projectLayout()
										.renderLaidOutPage(
											toPDF: pdf,
											localizedStringLanguage: self.localizedStringLanguage)
								}

								await ProjectsFooter()
									.projectLayout()
									.renderLaidOutPage(
										toPDF: pdf,
										localizedStringLanguage: self.localizedStringLanguage)

							}

						NSWorkspace.shared.open(url)

					}
				}

			}
		}
		#endif
	}
}

struct LocalizedStringLanguageEnvironmentKey: EnvironmentKey {
	static let defaultValue: LocalizedString.Language = .en
}

extension EnvironmentValues {
	var localizedStringLanguage: LocalizedString.Language {
		get { self[LocalizedStringLanguageEnvironmentKey.self] }
		set { self[LocalizedStringLanguageEnvironmentKey.self] = newValue }
	}
}
