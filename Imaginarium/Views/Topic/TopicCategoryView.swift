import SwiftUI

struct TopicCategoryView: View {
    @Environment(TopicViewModel.self) var topicVM
    @Binding var path : [Destination]
    @State var searchText: String = ""

    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    ComponentTitle(title: "Communauté")
                    Spacer()
                    Menu{
                        ForEach(TopicCategory.allCases, id: \.self) { topicClicked in
                            Button{
                                if topicVM.isCategorySelected == topicClicked {
                                    topicVM.isCategorySelected = nil
                                } else {
                                    topicVM.isCategorySelected = topicClicked
                                }
                            }label: {
                                Text(topicClicked.rawValue)
                            }
                        }
                    }label: {
                        Image(systemName: "line.3.horizontal.decrease")
                            .font(.title2)
                            .foregroundColor(.white)
                    }

                }
                .padding()
                SearchBarView(text: $searchText)
                    .padding(.horizontal)
                
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
            }
            
        }
    }
}
