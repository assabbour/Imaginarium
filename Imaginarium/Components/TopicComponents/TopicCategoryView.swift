import SwiftUI

struct TopicCategoryView: View {
    @Environment(TopicViewModel.self) var topicVM
    @Binding var path : [Destination]
    @State var searchText: String = ""

    var body: some View {
        VStack {
            ScrollView {
                
                HeaderTopicView(searchText: $searchText)
                    .padding(.bottom)
                
                ForEach(topicVM.displayedCategories, id: \.self) {
                    topicFiltered in
                    let filteredTopics = topicVM.filterTopicSearchBar(searchText, categorySelected: topicFiltered)
                    if !filteredTopics.isEmpty {
                        TopicCategoyTitleView(topicFiltered: topicFiltered)
                        ScrollView(.horizontal) {
                                HStack {
                                    ForEach(filteredTopics) { topic in
                                        TopicRowView(topic: topic)
                                            .onTapGesture {
                                                path.append(Destination.topic(topic))
                                            }
                                    }
                                }
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        RowDividerTopic()
                            .padding(.bottom)
                            .padding(.horizontal)
                    }
                }
                .padding(.horizontal)
            }
            
        }
    }
}
