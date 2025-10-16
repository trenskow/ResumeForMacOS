//
//  ProjectView.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct ProjectView: View {

	@Environment(\.localizedStringLanguage) private var localizedStringLanguage

	let project: Project

	init(
		project: Project
	) {
		self.project = project
	}

	var body: some View {
		VStack(
			spacing: 30
		) {

			HStack(
				alignment: .top,
				spacing: 20
			) {

				VStack(
					alignment: .trailing,
					spacing: 0
				) {
					Text(String(format: "%04d", self.project.timespan.year))
						.font(.resume.urbanist
							.sized(
								36,
								weight: .light))
					Group {
						LocalizedText(self.project.timespan.month.name, { $0.uppercased() })
							.font(.resume.workSans
								.sized(
									12,
									weight: .bold))
						LocalizedText(
							LocalizedString(
								en: "\(self.project.timespan.durationMonths) months",
								da: "\(self.project.timespan.durationMonths) måneder"))
							.font(.resume.workSans
								.sized(
									12,
									weight: .light))
					}
					.opacity(0.25)
				}
				.padding(.top, 60)
				.frame(width: 108, alignment: .trailing)

				Timeline()
					.frame(maxHeight: .infinity)

				VStack(
					alignment: .leading,
					spacing: 30
				) {

					VStack(
						alignment: .leading,
						spacing: 0
					) {

						self.name

						HStack(
							spacing: 3
						) {

							LocalizedText(LocalizedString(
								en: "ME",
								da: "MIG"))
								.font(.resume.workSans
									.sized(
										12,
										weight: .bold))
							Text("|")
							Text(self.project.roles.map { $0.name[self.localizedStringLanguage] }.joined(separator: " | ") )

						}
						.font(.resume.workSans
							.sized(
								12,
								weight: .regular))
						.opacity(0.5)

					}

					VStack(
						alignment: .leading,
						spacing: 60
					) {

						Paragraph(text: self.project.description)

						HStack(
							spacing: 30
						) {

							VStack(
								alignment: .leading,
								spacing: 15
							) {

								VStack(
									alignment: .leading,
									spacing: 0
								) {

									if self.project.technologies != nil {
										LocalizedText(
											LocalizedString(
												en: "Techonolgies".uppercased(),
												da: "Teknologier".uppercased()))
									}

									LocalizedText(
										LocalizedString(
											en: "Languages".uppercased(),
											da: "Sprog".uppercased()))

									LocalizedText(
										LocalizedString(
											en: "Stacks".uppercased(),
											da: "Stacks".uppercased()))

								}

								if self.project.contractor != nil {
									LocalizedText(
										LocalizedString(
											en: "Contractor".uppercased(),
											da: "Bureau".uppercased()))
								}

							}
							.font(.resume.workSans
								.sized(
									12,
									weight: .bold))

							VStack(
								alignment: .leading,
								spacing: 15
							) {

								VStack(
									alignment: .leading,
									spacing: 0
								) {

									if let technologies = self.project.technologies {
										Text(
											technologies
												.map { $0.name }
												.joined(separator: " | "))
									}

									Text(self.project
										.languages
										.map { $0.name }
										.joined(separator: " | "))

									Text(self.project
										.platforms
										.joined(separator: " | "))

								}

								if let contractor = self.project.contractor {
									Text(contractor.name)
								}

							}
							.font(.resume.workSans
								.sized(
									12,
									weight: .regular))

						}
						.opacity(0.5)

					}

				}
				.padding(.vertical, 60)
				.frame(
					maxWidth: .infinity,
					alignment: .leading)

			}
			.frame(
				maxWidth: .infinity)

		}
	}

}

extension Project {

	var platforms: Set<String> {
		return Set(self.roles
			.map { role -> [Role.Platform] in
				switch role {
				case .developer(let platforms):
					return platforms ?? []
				case .lead(let platforms):
					return platforms ?? []
				default:
					return []
				}
			}
			.map { role in
				role.map { $0.name }
			}
			.reduce([], +))
	}

}

extension ProjectView {

	var name: some View {

		HStack(
			alignment: .firstTextBaseline,
			spacing: 8
		) {

			Text(self.project.name)
				.font(.resume.urbanist
					.sized(
						36,
						weight: .bold))

			LocalizedText(
				LocalizedString(
					en: "for \(self.project.client.name ?? "myself")",
					da: "for \(self.project.client.name ?? "eget projekt")"))
				.font(.resume.urbanist
					.sized(
						36,
						weight: .light))
				.opacity(self.project.client.name == nil ? 0.25 : 1.0)

			if let associatedName = self.project.client.associatedName(for: self.localizedStringLanguage) {
				Text("(\(associatedName))")
					.font(.resume.urbanist
						.sized(
							14,
							weight: .light))
					.opacity(0.25)
			}

		}

	}

}

#Preview {
	ProjectView(project: .issuu)
		.frame(width: 926)
}
