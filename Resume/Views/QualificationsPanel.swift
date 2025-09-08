//
//  QualificationsPanel.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

import SwiftUI

struct QualificationsPanel: View {

	var body: some View {
		Panel {
			VStack(
				alignment: .leading,
				spacing: 60
			) {

				Header(
					text: "Technologies, Tools",
					additionalText: "& project count")

				HStack(
					alignment: .top,
					spacing: 0
				) {

					Table(
						title: "Roles",
						items: self.roles)
					.frame(width: 100)

					Spacer()

					Table(
						title: "Technologies",
						items: self.technologies)
					.frame(width: 160)

					Spacer()

					Table(
						title: "Languages",
						items: self.languages)
					.frame(width: 119)

					Spacer()

					Table(
						title: "Platforms",
						items: self.platforms)
					.frame(width: 104)

				}
				.frame(maxWidth: .infinity)

			}
			.padding(.vertical, 120)
			.padding(.leading, 198)
			.padding(.trailing, 120)
		}
	}

}

extension QualificationsPanel {

	var roles: [Table.Item] {
		return Project.allCases
			.reduce(
				[:]
			) { partialResult, project in
				return project.roles
					.reduce(
						into: partialResult
					) { partialResult, role in
						partialResult[role.shortName, default: 0] += 1
					}
			}
			.map { key, value in
				return Table.Item(
					title: key,
					count: value)
			}
	}

	var technologies: [Table.Item] {
		return Project.allCases
			.reduce(
				[:]
			) { partialResult, project in
				return (project.technologies ?? [])
					.reduce(
						into: partialResult
					) { partialResult, technology in
						partialResult[technology.name, default: 0] += 1
					}
			}
			.map { key, value in
				return Table.Item(
					title: key,
					count: value)
			}
	}

	var languages: [Table.Item] {
		return Project.allCases
			.reduce(
				[:]
			) { partialResult, project in
				return project.languages
					.reduce(
						into: partialResult
					) { partialResult, language in
						partialResult[language.name, default: 0] += 1
					}
			}
			.map { key, value in
				return Table.Item(
					title: key,
					count: value)
			}
	}

	var platforms: [Table.Item] {
		return Project.allCases
			.reduce([]) { partialResult, project in
				return partialResult + project.roles
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
			}
			.reduce([], +)
			.reduce([]) { partialResult, platform -> [String] in
				switch platform {
				case .backend(let stack):
					return partialResult + [stack.name]
				case .web(let framework):
					return partialResult + [framework.name]
				default:
					return partialResult + [platform.name]
				}
			}
			.reduce(
				into: [:]
			) { partialResult, platformName in
				partialResult[platformName, default: 0] += 1
			}
			.map { key, value in
				return Table.Item(
					title: key,
					count: value)
			}
	}

}

#Preview {
	QualificationsPanel()
		.frame(width: 926)
}
