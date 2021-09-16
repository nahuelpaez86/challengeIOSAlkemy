//
//  CategoryViewController.swift
//  TutorialApp
//
//  Created by Nahuel Paez on 12/09/2021.
//

import UIKit



class CategoryViewController: UIViewController{
   
    
  
    @IBOutlet weak var tableView: UITableView!
    
  // llamo al viewModel
    
    private var viewModel : CategoriesViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = CategoriesViewModel(service:CategoriesServices())
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Registrar celda custom (personalizada) si es necesario
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        getCategories()
    }
 // me trae la data de la api desde el viewModel
    func getCategories(){
        viewModel?.getCategories {
            self.tableView.reloadData()
        }
       }

}

extension CategoryViewController : UITableViewDataSource,UITableViewDelegate {
   
    // funcion que al hacer click en la row, el usuario puede ver mas data
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        showQuestions(for: viewModel.getCategory(at: indexPath.row))
    }
    
    // devuelve la cantidad de filas de una seccion de la tabla
    func tableView(_ tableView : UITableView,numberOfRowsInSection section: Int)-> Int{
        viewModel.getCategoriesCount()
    }
    
    
    // devuelve la celda para una fila dada , los datos que mostraremos 
  func tableView( _ _tableView : UITableView,cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath)
    
    
    cell.textLabel?.text = viewModel.getCategory(at: indexPath.row).name
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = UIColor(named: "Alkemy")
        
        
        // forma estatica
       // switch indexPath.row {
       // case 0:
       //     cell.textLabel?.text = "Primer categoria"
       // default:
       //     cell.textLabel?.text = "Segunda categoria "
       // }
        return cell
    }
    
    private func showQuestions (for category : Category){
        let questionViewController = QuestionViewController(nibName: "QuestionViewController", bundle: nil)
        questionViewController.title = category.name
        questionViewController.categoryID = category.id
        
        navigationController?.pushViewController(questionViewController, animated: true)
    }
    
}



// IndexPath : es una estructura que encapsula la seccion y el numero de fila de la TableView, ya que esta dividido en secciones y cada una tiene un cierto numero de filas.
