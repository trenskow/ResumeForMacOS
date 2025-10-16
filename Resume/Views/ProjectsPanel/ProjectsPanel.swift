//
//  ProjectsPanel.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct ProjectsPanel: View {

	var body: some View {
		Panel {
			VStack(
				alignment: .leading,
				spacing: 0
			) {

				HStack(
					spacing: 20
				) {

					Rectangle()
						.frame(width: 108)
						.foregroundStyle(.clear)

					Timeline(
						parts: [.bottom])

					Header(
						text: LocalizedString(
							en: "Projects",
							da: "Projekter"))
					.frame(height: 45)
					.padding(.vertical, 60)

				}

				ForEach(0..<self.projects.count, id: \.self) { index in
					ProjectView(
						project: self.projects[index])
				}

				HStack(
					spacing: 20
				) {

					Rectangle()
						.frame(width: 108)
						.foregroundStyle(.clear)

					Timeline(
						parts: [.top])

					VStack(
						alignment: .leading,
						spacing: 30
					) {

						LocalizedText(
							LocalizedString(
								en: "Prior experience",
								da: "Tidligere erfaring"))
							.font(.resume.urbanist
								.sized(
									36,
									weight: .light))
							.foregroundStyle(.black)

						Paragraph(
							text: LocalizedString(
								en: """
									Prior to working with iOS, I’ve been working primarily with Microsoft .NET and Adobe Flash. I did various backend and frontend projects in these technologies.
									My first experience as.a professional developer goes back to 2000, where I was first hired as a ASP (the not .net kind) developer for a Danish company.
									I’ve been coding in various forms as a hobbyist since the age of 6 on the Commodore 64 – whereas my teenage years and the discovery of QuickBASIC and Visual Basic was what really got me hooked and learned me all the basics (pun intended). 
									More information can be provided upon request.
									""",
								da: """
									Før jeg begyndte at arbejde med iOS, arbejdede jeg primært med Microsoft .NET og Adobe Flash. Jeg lavede forskellige backend- og frontend-projekter i disse teknologier.
									Min første erfaring som professionel udvikler går tilbage til år 2000, hvor jeg blev ansat som ASP-udvikler (ikke .NET-versionen) hos en dansk virksomhed.
									Jeg har kodet i forskellige former som hobby siden jeg var 6 år gammel på en Commodore 64 – og i mine teenageår, hvor jeg opdagede QuickBASIC og Visual Basic, blev jeg for alvor bidt af det og lærte alle de grundlæggende principper (ordspillet er med vilje).
									Yderligere information kan gives efter anmodning.
									"""))

					}
					.padding(.vertical, 60)
					.frame(maxWidth: .infinity)

				}
				.frame(maxWidth: .infinity)

			}
			.padding(.vertical, 60)
			.padding(.trailing, 60)
			.padding(.leading, 30)
		}
	}

}

extension ProjectsPanel {

	var projects: [Project] {
		return Project.allCases
			.sorted { project1, project2 in
				if project1.timespan.year == project2.timespan.year {
					return project1.timespan.month.rawValue > project2.timespan.month.rawValue
				}
				return project1.timespan.year > project2.timespan.year
			}
	}

}

#Preview {
	ProjectsPanel()
		.frame(width: 926)
}
