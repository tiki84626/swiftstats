//: Playground - noun: a place where people can play

//import UIKit
import SwiftStats
import Foundation

//srand48(0)
var b = SwiftStats.Distributions.Bernoulli(p: 0.7)
print(b.Pmf(1)) // 0.7
print(b.Cdf(1)) // 1.0
print(b.Cdf(0)) // 0.3
print(b.Quantile(0.5)) // 1
print(b.Quantile(0.2)) // 0 */
//b.seed()
print(b.Random()) // 0
b = SwiftStats.Distributions.Bernoulli(data: [1,1,0,1])
//print(b.p)
print(b.Random())


var l = SwiftStats.Distributions.Laplace(mean: 0.0, b: 1.0)
print(l.Pdf(1))
srand48(0)
print(round(pow(10.0,15.0)*l.Random())/pow(10.0,15.0))
print(l.Cdf(1))
print(l.Cdf(0))

l = SwiftStats.Distributions.Laplace(data:[12,13,12])
//print(l.mean)

var p = SwiftStats.Distributions.Poisson(m: 1.5)
print(p.Pmf(3))
print(p.Cdf(1))
print(p.Cdf(0))
srand48(0)
print(p.Quantile(0.5))
dump(p.Random(4))

p = SwiftStats.Distributions.Poisson(data: [1,2,3])
//print(p.m)
print(p.Quantile(0.999))

let g = SwiftStats.Distributions.Geometric(p: 0.5)
print(g.Pmf(3))
print(g.Cdf(3))
print(g.Cdf(4))
print(g.Quantile(0.9999))
srand48(0)
print(g.Random())

let e = SwiftStats.Distributions.Exponential(l: 0.5)
print(e.Pdf(3))
print(e.Cdf(3))
print(e.Cdf(4))
print(e.Quantile(0.5))
print(e.Random())

print(SwiftStats.Common.erfinv(erf(1.4)))

var n = SwiftStats.Distributions.Normal(m: 0.0, v: 3)
print(n.Cdf(pow(3,0.5))-n.Cdf(-pow(3,0.5)))
print(n.Quantile(n.Cdf(3)))
n = SwiftStats.Distributions.Normal(data: [1,2,1,0,1,2])
//print(n.v)

let u = SwiftStats.Distributions.Uniform(a:5,b:10)
print(u.Random())
