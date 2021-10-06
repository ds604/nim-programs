import neo

let m = matrix(@[ @[1.0, 2,3],
  @[4.0,5,6],
  @[7.0,8,9]
])
let e = m.eigenvalues()
echo e.real
echo e.img