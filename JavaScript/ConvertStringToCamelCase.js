function toCamelCase(str){
    return str.replace(/[\W+|_](.)/g, function(locale, change){
        return change.toUpperCase();
    });
}
x = toCamelCase('Teste_to-camel-case');
console.log(x);