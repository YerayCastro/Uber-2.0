//
//  UserService.swift
//  UberSwiftUITutorial
//
//  Created by Yery Castro on 10/8/23.
//

import Firebase


class UserService: ObservableObject {
    static let shared = UserService()
    @Published var user: User?
    
    init() {
        print("did init user service")
        fetchUser()
    }
    
     func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
            print("did fetch user from firestore")
            guard let snapshot = snapshot else { return }
            guard let user = try? snapshot.data(as: User.self) else { return }
            self.user = user
        }
    }

    
//    static func fetchUser(completion: @escaping(User) -> Void) {
//        guard let uid = Auth.auth().currentUser?.uid else { return }
//        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
//            guard let snapshot = snapshot else { return }
//
//            guard let user = try? snapshot.data(as: User.self) else { return }
//
//            completion(user)
//        }
//    }
}
