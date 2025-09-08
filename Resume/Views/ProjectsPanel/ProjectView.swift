//
//  ProjectView.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct ProjectView: View {

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
						Text(self.project.timespan.month.name.uppercased())
							.font(.resume.workSans
								.sized(
									12,
									weight: .bold))
						Text("\(self.project.timespan.durationMonths) months")
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
							Text("ME")
								.font(.resume.workSans
									.sized(
										12,
										weight: .bold))
							Text("|")
							Text(self.project.roles.map { $0.name }.joined(separator: " | ") )
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
								spacing: 0
							) {
								if self.project.technologies != nil {
									Text("Techonolgies".uppercased())
								}
								Text("Languages".uppercased())
								Text("Platforms".uppercased())
							}
							.font(.resume.workSans
								.sized(
									12,
									weight: .bold))

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
							.font(.resume.workSans
								.sized(
									12,
									weight: .regular))

						}
						.opacity(0.5)

					}

				}
				.padding(.vertical, 60)

			}

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

			Text("for \(self.project.client.name ?? "myself")")
				.font(.resume.urbanist
					.sized(
						36,
						weight: .light))
				.opacity(self.project.client.name == nil ? 0.25 : 1.0)

			if let associatedName = self.project.client.associatedName {
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
