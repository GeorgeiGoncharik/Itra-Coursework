import SwiftUI
import CoreData

struct SearchView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @StateObject private var viewModel: SearchViewModel
    
    init() {
        _viewModel = StateObject(wrappedValue: SearchViewModel())
    }
    
    var body: some View {
        NavigationView{
            VStack{
                CardTextField(
                    textField: TextField("", text: $viewModel.search),
                    imageName: "magnifyingglass"
                )
                .padding()
                
                ScrollView{
                    LazyVStack {
                        ForEach(viewModel.articles){ article in
                            NavigationLink(destination: ArticleDetail(article: article)){
                                ArticleRow(article: article)
                            }
                        }.padding()
                    }
                }
            }
            .navigationTitle("Search")
        }
    }
}

private extension SearchView{
    var allNewsSection: some View {
        return
            ArticleList(
                request: EverythingRequest(
                    sortingStrategy: .popularity,
                    pageSize: 100
                )
            )
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
