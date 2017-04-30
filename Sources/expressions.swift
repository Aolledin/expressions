import LogicKit

// Numbers:

let d0 = Value (0)
let d1 = Value (1)
let d2 = Value (2)
let d3 = Value (3)
let d4 = Value (4)
let d5 = Value (5)
let d6 = Value (6)
let d7 = Value (7)
let d8 = Value (8)
let d9 = Value (9)

func toNumber (_ n : Int) -> Term {
    var result = List.empty
    for char in String (n).characters.reversed () {
        switch char {
        case "0":
            result = List.cons (d0, result)
        case "1":
            result = List.cons (d1, result)
        case "2":
            result = List.cons (d2, result)
        case "3":
            result = List.cons (d3, result)
        case "4":
            result = List.cons (d4, result)
        case "5":
            result = List.cons (d5, result)
        case "6":
            result = List.cons (d6, result)
        case "7":
            result = List.cons (d7, result)
        case "8":
            result = List.cons (d8, result)
        case "9":
            result = List.cons (d9, result)
        default:
            assert (false)
        }
    }
    return result
}


//fonctions générales

//Généré avec un petit programme
//result est uniquement le dernier chiffre du résultat de l'addidion.
func add_chiffres( lhs: Term,  rhs: Term, result : Term, retenue : Term) -> Goal{

  return
    (lhs === d0 && lhs === d1 && result === d1 && retenue === d0) ||
    (lhs === d0 && lhs === d2 && result === d2 && retenue === d0) ||
    (lhs === d0 && lhs === d3 && result === d3 && retenue === d0) ||
    (lhs === d0 && lhs === d4 && result === d4 && retenue === d0) ||
    (lhs === d0 && lhs === d5 && result === d5 && retenue === d0) ||
    (lhs === d0 && lhs === d0 && result === d0 && retenue === d0) ||
    (lhs === d0 && lhs === d6 && result === d6 && retenue === d0) ||
    (lhs === d0 && lhs === d7 && result === d7 && retenue === d0) ||
    (lhs === d0 && lhs === d8 && result === d8 && retenue === d0) ||
    (lhs === d0 && lhs === d9 && result === d9 && retenue === d0) ||

    (lhs === d1 && lhs === d0 && result === d1 && retenue === d0) ||
    (lhs === d1 && lhs === d1 && result === d2 && retenue === d0) ||
    (lhs === d1 && lhs === d2 && result === d3 && retenue === d0) ||
    (lhs === d1 && lhs === d3 && result === d4 && retenue === d0) ||
    (lhs === d1 && lhs === d4 && result === d5 && retenue === d0) ||
    (lhs === d1 && lhs === d5 && result === d6 && retenue === d0) ||
    (lhs === d1 && lhs === d6 && result === d7 && retenue === d0) ||
    (lhs === d1 && lhs === d7 && result === d8 && retenue === d0) ||
    (lhs === d1 && lhs === d8 && result === d9 && retenue === d0) ||
    (lhs === d1 && lhs === d9 && result === d0 && retenue === d1) ||

    (lhs === d2 && lhs === d0 && result === d2 && retenue === d0) ||
    (lhs === d2 && lhs === d1 && result === d3 && retenue === d0) ||
    (lhs === d2 && lhs === d2 && result === d4 && retenue === d0) ||
    (lhs === d2 && lhs === d3 && result === d5 && retenue === d0) ||
    (lhs === d2 && lhs === d4 && result === d6 && retenue === d0) ||
    (lhs === d2 && lhs === d5 && result === d7 && retenue === d0) ||
    (lhs === d2 && lhs === d6 && result === d8 && retenue === d0) ||
    (lhs === d2 && lhs === d7 && result === d9 && retenue === d0) ||
    (lhs === d2 && lhs === d8 && result === d0 && retenue === d1) ||
    (lhs === d2 && lhs === d9 && result === d1 && retenue === d1) ||

    (lhs === d3 && lhs === d0 && result === d3 && retenue === d0) ||
    (lhs === d3 && lhs === d1 && result === d4 && retenue === d0) ||
    (lhs === d3 && lhs === d2 && result === d5 && retenue === d0) ||
    (lhs === d3 && lhs === d3 && result === d6 && retenue === d0) ||
    (lhs === d3 && lhs === d4 && result === d7 && retenue === d0) ||
    (lhs === d3 && lhs === d5 && result === d8 && retenue === d0) ||
    (lhs === d3 && lhs === d6 && result === d9 && retenue === d0) ||
    (lhs === d3 && lhs === d7 && result === d0 && retenue === d1) ||
    (lhs === d3 && lhs === d8 && result === d1 && retenue === d1) ||
    (lhs === d3 && lhs === d9 && result === d2 && retenue === d1) ||

    (lhs === d4 && lhs === d0 && result === d4 && retenue === d0) ||
    (lhs === d4 && lhs === d1 && result === d5 && retenue === d0) ||
    (lhs === d4 && lhs === d2 && result === d6 && retenue === d0) ||
    (lhs === d4 && lhs === d3 && result === d7 && retenue === d0) ||
    (lhs === d4 && lhs === d4 && result === d8 && retenue === d0) ||
    (lhs === d4 && lhs === d5 && result === d9 && retenue === d0) ||
    (lhs === d4 && lhs === d6 && result === d0 && retenue === d1) ||
    (lhs === d4 && lhs === d7 && result === d1 && retenue === d1) ||
    (lhs === d4 && lhs === d8 && result === d2 && retenue === d1) ||
    (lhs === d4 && lhs === d9 && result === d3 && retenue === d1) ||

    (lhs === d5 && lhs === d0 && result === d5 && retenue === d0) ||
    (lhs === d5 && lhs === d1 && result === d6 && retenue === d0) ||
    (lhs === d5 && lhs === d2 && result === d7 && retenue === d0) ||
    (lhs === d5 && lhs === d3 && result === d8 && retenue === d0) ||
    (lhs === d5 && lhs === d4 && result === d9 && retenue === d0) ||
    (lhs === d5 && lhs === d5 && result === d0 && retenue === d1) ||
    (lhs === d5 && lhs === d6 && result === d1 && retenue === d1) ||
    (lhs === d5 && lhs === d7 && result === d2 && retenue === d1) ||
    (lhs === d5 && lhs === d8 && result === d3 && retenue === d1) ||
    (lhs === d5 && lhs === d9 && result === d4 && retenue === d1) ||

    (lhs === d6 && lhs === d0 && result === d6 && retenue === d0) ||
    (lhs === d6 && lhs === d1 && result === d7 && retenue === d0) ||
    (lhs === d6 && lhs === d2 && result === d8 && retenue === d0) ||
    (lhs === d6 && lhs === d3 && result === d9 && retenue === d0) ||
    (lhs === d6 && lhs === d4 && result === d0 && retenue === d1) ||
    (lhs === d6 && lhs === d5 && result === d1 && retenue === d1) ||
    (lhs === d6 && lhs === d6 && result === d2 && retenue === d1) ||
    (lhs === d6 && lhs === d7 && result === d3 && retenue === d1) ||
    (lhs === d6 && lhs === d8 && result === d4 && retenue === d1) ||
    (lhs === d6 && lhs === d9 && result === d5 && retenue === d1) ||

    (lhs === d7 && lhs === d0 && result === d7 && retenue === d0) ||
    (lhs === d7 && lhs === d1 && result === d8 && retenue === d0) ||
    (lhs === d7 && lhs === d2 && result === d9 && retenue === d0) ||
    (lhs === d7 && lhs === d3 && result === d0 && retenue === d1) ||
    (lhs === d7 && lhs === d4 && result === d1 && retenue === d1) ||
    (lhs === d7 && lhs === d5 && result === d2 && retenue === d1) ||
    (lhs === d7 && lhs === d6 && result === d3 && retenue === d1) ||
    (lhs === d7 && lhs === d7 && result === d4 && retenue === d1) ||
    (lhs === d7 && lhs === d8 && result === d5 && retenue === d1) ||
    (lhs === d7 && lhs === d9 && result === d6 && retenue === d1) ||

    (lhs === d8 && lhs === d0 && result === d8 && retenue === d0) ||
    (lhs === d8 && lhs === d1 && result === d9 && retenue === d0) ||
    (lhs === d8 && lhs === d2 && result === d0 && retenue === d1) ||
    (lhs === d8 && lhs === d3 && result === d1 && retenue === d1) ||
    (lhs === d8 && lhs === d4 && result === d2 && retenue === d1) ||
    (lhs === d8 && lhs === d5 && result === d3 && retenue === d1) ||
    (lhs === d8 && lhs === d6 && result === d4 && retenue === d1) ||
    (lhs === d8 && lhs === d7 && result === d5 && retenue === d1) ||
    (lhs === d8 && lhs === d8 && result === d6 && retenue === d1) ||
    (lhs === d8 && lhs === d9 && result === d7 && retenue === d1) ||

    (lhs === d9 && lhs === d0 && result === d9 && retenue === d0) ||
    (lhs === d9 && lhs === d1 && result === d0 && retenue === d1) ||
    (lhs === d9 && lhs === d2 && result === d1 && retenue === d1) ||
    (lhs === d9 && lhs === d3 && result === d2 && retenue === d1) ||
    (lhs === d9 && lhs === d4 && result === d3 && retenue === d1) ||
    (lhs === d9 && lhs === d5 && result === d4 && retenue === d1) ||
    (lhs === d9 && lhs === d6 && result === d5 && retenue === d1) ||
    (lhs === d9 && lhs === d7 && result === d6 && retenue === d1) ||
    (lhs === d9 && lhs === d8 && result === d7 && retenue === d1) ||
    (lhs === d9 && lhs === d9 && result === d8 && retenue === d1)
}


func reverseAcc(list: Term, acc: Term, reversed: Term) -> Goal{
  return (list === List.empty && reversed === acc) ||
    freshn{ t in
    let head = t["head"]
    let tail = t["tail"]
    return list === List.cons(head, tail) && delayed (reverseAcc(list: tail, acc: List.cons(head, acc),reversed: reversed ))

  }

}

//renverse une liste
func reverse(list: Term, reversed: Term) -> Goal {
  return reverseAcc(list: list, acc: List.empty, reversed: reversed)

}

// Arithmetic:

func add (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func subtract (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func multiply (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func divide (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

// Booleans:

let t = Value (true)
let f = Value (false)

func not (_ of: Term) -> Map {
    assert (false)
}

func and (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func or (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func implies (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

// Comparisons:

func lessthan (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func lessequal (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func greaterthan (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func greaterequal (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func equal (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

func notequal (_ lhs: Term, _ rhs: Term) -> Map {
    assert (false)
}

// Evaluation:

func evalArithmetic (input: Term, output: Term) -> Goal {
    assert (false)
}

func evalBoolean (input: Term, output: Term) -> Goal {
    assert (false)
}

func evalComparison (input: Term, output: Term) -> Goal {
    assert (false)
}

// Main evaluation:

func eval (input: Term, output: Term) -> Goal {
    assert (false)
}
