function triangular(n) {
    return n < 1 ? 0 : n * (n + 1) / 2;
}

console.log(triangular(0))
console.log(triangular(2))
console.log(triangular(3))