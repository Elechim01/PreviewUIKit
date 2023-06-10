# Preview in UIKit

This package enables the preview in UIKit view to install:

## SwiftPackageManager:
```siwft
 https://github.com/Elechim01/PreviewUIKit
```

## Coccoa Pods:
```ruby
  pod 'PreviewInUIKit'
 
```
 ☠️ if we have a problem to install: 
 ⚠️ if project was created by xcode 14 select project Format Xocde 13.0 

# This Package contains 3 struct: 


## - PreviewCollection -> for UICollection 
    ⚠️ !! Attention -> show only first UICollectionViewCell 
## - PreviewTableView -> for UITableViewCell
## - PreviewViewController -> for UIViewController

example code:
## Implementation for View controller
```siwft
// View Controller:
import UIkit
import SwiftUI
import PreviewUIKit
class MyViewController: UIViewController {
// implementation 
}

struct MyPreviewProvider_Previews:PreviewProvider {
  static var previews: some View {
    PreviewViewController<MyViewController>()
  }
}
```
## Implementation For TableViewCell
```siwft
// TableViewCell:
import UIkit
import SwiftUI
import PreviewUIKit
class MyTableViewCell: UITableViewCell {
// implementation 
}

struct MyPreviewProvider_Previews:PreviewProvider {
  static var previews: some View {
   PreviewTableView(cellType: MyTableViewCell.self,numberOfRow:3) { index in
   // Create Cell:
   let cell = MyTableViewCell()
   cell.setUp()
   return cell
  }
}
```

## Implementation For UICollectionViewCell 
```siwft
// TableViewCell:
import UIkit
import SwiftUI
import PreviewUIKit
class MyCustomCollection: UICollectionViewCell {
// implementation 
}

struct MyPreviewProvider_Previews:PreviewProvider {
  static var previews: some View {
   PreviewColection(cellType: MyCustomCollection.self) { collection in
   // Create Collection
   guad let myCollection = collection as? MyCustomCollection else { return UICollectionViewCell()}
   myCollection.setUp()
   return myCollection
  }
}
```

