// Add your code below:

func gcd (p:Int, q:Int) -> Int{
    var divisor = p
    var dividend = q
    var r = p % q
    while divisor % dividend != 0 {
        divisor = dividend
        dividend = r
        r = divisor % dividend
    }
    return dividend
}
// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
print(358512, 227304, gcd(p:358512, q:227304))
print(31815, 23436, gcd(p:31815, q:23436))
print(121196, 260842, gcd(p:121196, q:260842))
print(33512, 44020, gcd(p:33512, q:44020))
print(22559, 58633, gcd(p:22559, q:58633))
print(126959, 229124, gcd(p:126959, q:229124))
print(1767, 32829, gcd(p:1767, q:32829))
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
