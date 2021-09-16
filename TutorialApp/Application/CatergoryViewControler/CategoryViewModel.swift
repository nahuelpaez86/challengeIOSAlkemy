//
//  CategoryViewModel.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 13/09/2021.
//

import Foundation

class CategoriesViewModel {
    private let categoriesServices : CategoriesServices
    private var categories = [Category]()
    
    init(service: CategoriesService){
        self.categoriesServices = service
    }
    
    func getCategories(completion :@escaping ( ) -> Void){
        categoriesServices.getCategories {
            categories in
            self.categories = categories
        }
    }
    // trae los datos segun el index
    func getCategory(at index: Int)-> Category{
        categories[index]
    }
    
    
    
    // devuelve la cantidad de elementos del array que se usa para las filas
    func getCategoriesCount ()->Int {
        categories.count
    }
}
