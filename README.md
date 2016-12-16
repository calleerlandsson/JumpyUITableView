# Jumpy UITableView

When inserting rows into a `UITableView` using `insertRows(at indexPaths:
[IndexPath], with animation: UITableViewRowAnimation)` while a
`UIRefreshControl` is refreshing within a `UITableViewController`, the following
happens:

![Demo](demo.gif)

I'm struggling to to figure out why. Do you know? Let me know by creating an
issue or PR, or by reaching out to [me on
Twitter](https://twitter.com/calleerlandsson).

I tested this on both the iOS 10.2 simulator and on an iPhone 6 running iOS
10.2. I built the project using Xcode version 8.2 (8C38).
