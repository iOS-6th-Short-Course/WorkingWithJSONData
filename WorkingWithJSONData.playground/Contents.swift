import UIKit

let fileUrl = Bundle.main.url(forResource: "data", withExtension: "json")

let data = try? Data(contentsOf: fileUrl!)

let jsonObject = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)

let dict = jsonObject as! [String: Any]

print("MESSAGE:", dict["message"] as! String)
print("STATUS :", dict["status"] as! Bool)
print(dict)
let people = dict["people"] as! NSArray

for person in people {
    let p = person as! [String: Any]
    print("  NAME: \(p["name"] as! String), AGE: \(p["age"] as! Int)")
}


