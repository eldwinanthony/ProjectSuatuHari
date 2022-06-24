//
//  CoreDataHelper.swift
//  ProjectSuatuHari
//
//  Created by Farabi Dharma on 24/06/22.
//

import Foundation
import CoreData
import UIKit

class CoreDataHelper{
    let container : NSPersistentContainer!
    let viewcontext : NSManagedObjectContext!
    
    //inisialisasi si view context and container nya
    init(){
        //ini buat ngambil dari appdel
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        container = appDelegate?.persistentContainer
        viewcontext = container.viewContext
    }
    //buat ngambil context buat ngakses core data
    func getBackgroundContext() -> NSManagedObjectContext {
            if let context = container?.newBackgroundContext() {
                return context
            } else {
                return viewcontext
            }
        }
    //buat kalo mau nge save sesuatu ke core data nya
    func saveContext(saveContext: NSManagedObjectContext? = nil) {
            guard let context = saveContext else { return }
            do {
                try context.save()
            } catch let error as NSError {
                print("Error: \(error), \(error.userInfo)")
            }
        }
}
