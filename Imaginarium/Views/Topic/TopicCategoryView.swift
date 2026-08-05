import SwiftUI

struct TopicCategoryView: View {
    @Environment(TopicViewModel.self) var topicVM
    @Binding var path : [Topic]
    var body: some View {
        VStack {
            ScrollView {
                ForEach(TopicCategory.allCases, id: \.self) { topicFiltered in
                    TopicCategoyTitleView(topicFiltered: topicFiltered)
                    ScrollView(.horizontal) {
                            HStack {
                                ForEach(topicVM.filterTopic(topicFiltered)) { topic in
                                    TopicRowView(topic: topic)
                                        .onTapGesture {
                                            path.append(topic)
                                        }
                                }
                                
                            }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    RowDividerTopic()
                        .padding(.top)
                        .padding(.horizontal)
                }
            }
            
        }
    }
}
