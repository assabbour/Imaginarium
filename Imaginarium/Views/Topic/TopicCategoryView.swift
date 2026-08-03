import SwiftUI

struct TopicCategoryView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(TopicCategory.allCases, id: \.self) { topicFiltered in
                    Text("\(topicFiltered.self)")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    DividerTopic()
                    ScrollView(.horizontal) {
                            HStack {
                                ForEach(MockData.topics.filter{$0.category == topicFiltered}) { topic in
                                    TopicRowView(topic: topic)
                                }
                            }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            
        }
    }
}
