import Foundation
import CoreData

class BookmarkDetailViewModel: ObservableObject {
    @Published var bookmark: Bookmark = Bookmark()
    private var bookmarkID: UUID
    private var context: NSManagedObjectContext
    
    init(for id: UUID) {
        context = PersistenceController.shared.container.newBackgroundContext()
        bookmarkID = id
        fetchBookmark()
    }
    
    func fetchBookmark(){
        let request = NSFetchRequest<Bookmark>(entityName: "Bookmark")
        request.predicate = NSPredicate(format: "id == %@", bookmarkID.uuidString)
        request.fetchLimit = 1
        do{
            bookmark = try context.fetch(request).first!
        } catch {
            let error = error as NSError
            fatalError(error.localizedDescription)
        }
    }
    
    func deleteBookmark() {
        context.delete(bookmark)
        do {
            try context.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}