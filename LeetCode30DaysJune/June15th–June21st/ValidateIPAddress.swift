/*
 Question - Validate IP Address
 Link - > https://leetcode.com/explore/featured/card/june-leetcoding-challenge/541/week-3-june-15th-june-21st/3362/
 */

class Solution {
    let IPv4 = "IPv4", IPv6 = "IPv6", IPv4Seperator = Character("."), IPv6Seperator = Character(":"), InvalidIP = "Neither"
    func validIPAddress(_ IP: String) -> String {
        guard let isIPv4 = isPotentialIP(IP) else{
            return InvalidIP
        }
        return isIPv4 ? isValidIPv4(IP) : isValidIPv6(IP)
    }
    
    func isPotentialIP(_ IP: String) -> Bool?{
        let isIPv4 = IP.contains(IPv4Seperator), isIPv6 = IP.contains(IPv6Seperator)
        if isIPv4 || isIPv6{
            return isIPv4
        }else{
            return nil
        }
    }
    
    func isValidIPv4(_ IP: String) -> String{
        if IP.contains("\(IPv4Seperator)\(IPv4Seperator)") || IP.first == IPv4Seperator || IP.last == IPv4Seperator{
            return InvalidIP
        }
        let numbers = IP.split(separator: IPv4Seperator)
        guard numbers.count == 4 else { return InvalidIP }
        
        for number in numbers{
            guard let num = Int(number)else { return InvalidIP }
            guard let firstNumber = number.first, firstNumber.isNumber else { return InvalidIP }
            if firstNumber == "0", number.count > 1{ return InvalidIP }
            if num < 0 || num > 255 { return InvalidIP}
        }
        return IPv4
    }
    
    
    func isValidIPv6(_ IP: String) -> String{
        if IP.contains("\(IPv6Seperator)\(IPv6Seperator)") || IP.first == IPv6Seperator || IP.last == IPv6Seperator{
            return InvalidIP
        }
        let numbers = IP.split(separator: IPv6Seperator)
        guard numbers.count == 8 else { return InvalidIP }
        
        for number in numbers{
            let number = number.lowercased()
            if number.count > 4 { return InvalidIP }
            for char in number{
                if !char.isHexDigit{
                    return InvalidIP
                }
            }
        }
        return IPv6
    }
}
