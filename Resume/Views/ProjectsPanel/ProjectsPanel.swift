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

				ProjectsHeader()

				let timeline = Project.timeline

				ForEach(0..<timeline.count, id: \.self) { index in
					ProjectView(
						project: timeline[index])
				}

				ProjectsFooter()

			}
			.padding(.vertical, 60)
			.padding(.trailing, 60)
			.padding(.leading, 30)
		}
	}

}

#Preview {
	ProjectsPanel()
		.frame(width: 926)
}
