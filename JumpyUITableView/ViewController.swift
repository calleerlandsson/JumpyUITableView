import UIKit

class ViewController: UITableViewController {
  var numbers = [Int]()

  override func viewDidLoad() {
    super.viewDidLoad()

    refreshControl = UIRefreshControl()
    refreshControl!.beginRefreshing()

    for number in 1...10 {
      DispatchQueue.main.asyncAfter(deadline: .now() + Double(number)) {
        self.numbers.append(number)
        let lastRow = self.numbers.count - 1
        let indexPaths = [IndexPath(row: lastRow, section: 0)]
        self.tableView.insertRows(at: indexPaths, with: .automatic)
      }
    }
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
    -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath)
      cell.textLabel!.text = "\(numbers[indexPath.row])"
      return cell
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return numbers.count
  }
}

