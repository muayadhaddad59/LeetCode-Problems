import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty { return "" }
    var prefix = strs[0]
    for str in strs.dropFirst() {
        while !str.hasPrefix(prefix) {
            prefix = String(prefix.dropLast())
            if prefix.isEmpty { return "" }
        }
    }
    return prefix
}

let solution = longestCommonPrefix(["flower","flow","flight"])
print(solution)
