import LogicKit

// Numbers:

//a in {chiffres}
//-----------------
//a in Chiffres

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

//
//------------------
//empty in nombres

//a in chiffre, n in nomnbre
//-----------------------
//(a, n) in nombre

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
//mem est la potentielle retenue du calcul d'avant
func addChiffres( lhs: Term,  rhs: Term, mem: Term , result : Term, retenue : Term) -> Goal{

  return
    (lhs === d0 && rhs === d0 && mem === d0 && result === d0 && retenue === d0) ||
    (lhs === d0 && rhs === d1 && mem === d0 && result === d1 && retenue === d0) ||
    (lhs === d0 && rhs === d2 && mem === d0 && result === d2 && retenue === d0) ||
    (lhs === d0 && rhs === d3 && mem === d0 && result === d3 && retenue === d0) ||
    (lhs === d0 && rhs === d4 && mem === d0 && result === d4 && retenue === d0) ||
    (lhs === d0 && rhs === d5 && mem === d0 && result === d5 && retenue === d0) ||
    (lhs === d0 && rhs === d6 && mem === d0 && result === d6 && retenue === d0) ||
    (lhs === d0 && rhs === d7 && mem === d0 && result === d7 && retenue === d0) ||
    (lhs === d0 && rhs === d8 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d0 && rhs === d9 && mem === d0 && result === d9 && retenue === d0) ||

    (lhs === d1 && rhs === d0 && mem === d0 && result === d1 && retenue === d0) ||
    (lhs === d1 && rhs === d1 && mem === d0 && result === d2 && retenue === d0) ||
    (lhs === d1 && rhs === d2 && mem === d0 && result === d3 && retenue === d0) ||
    (lhs === d1 && rhs === d3 && mem === d0 && result === d4 && retenue === d0) ||
    (lhs === d1 && rhs === d4 && mem === d0 && result === d5 && retenue === d0) ||
    (lhs === d1 && rhs === d5 && mem === d0 && result === d6 && retenue === d0) ||
    (lhs === d1 && rhs === d6 && mem === d0 && result === d7 && retenue === d0) ||
    (lhs === d1 && rhs === d7 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d1 && rhs === d8 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d1 && rhs === d9 && mem === d0 && result === d0 && retenue === d1) ||

    (lhs === d2 && rhs === d0 && mem === d0 && result === d2 && retenue === d0) ||
    (lhs === d2 && rhs === d1 && mem === d0 && result === d3 && retenue === d0) ||
    (lhs === d2 && rhs === d2 && mem === d0 && result === d4 && retenue === d0) ||
    (lhs === d2 && rhs === d3 && mem === d0 && result === d5 && retenue === d0) ||
    (lhs === d2 && rhs === d4 && mem === d0 && result === d6 && retenue === d0) ||
    (lhs === d2 && rhs === d5 && mem === d0 && result === d7 && retenue === d0) ||
    (lhs === d2 && rhs === d6 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d2 && rhs === d7 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d2 && rhs === d8 && mem === d0 && result === d0 && retenue === d1) ||
    (lhs === d2 && rhs === d9 && mem === d0 && result === d1 && retenue === d1) ||

    (lhs === d3 && rhs === d0 && mem === d0 && result === d3 && retenue === d0) ||
    (lhs === d3 && rhs === d1 && mem === d0 && result === d4 && retenue === d0) ||
    (lhs === d3 && rhs === d2 && mem === d0 && result === d5 && retenue === d0) ||
    (lhs === d3 && rhs === d3 && mem === d0 && result === d6 && retenue === d0) ||
    (lhs === d3 && rhs === d4 && mem === d0 && result === d7 && retenue === d0) ||
    (lhs === d3 && rhs === d5 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d3 && rhs === d6 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d3 && rhs === d7 && mem === d0 && result === d0 && retenue === d1) ||
    (lhs === d3 && rhs === d8 && mem === d0 && result === d1 && retenue === d1) ||
    (lhs === d3 && rhs === d9 && mem === d0 && result === d2 && retenue === d1) ||

    (lhs === d4 && rhs === d0 && mem === d0 && result === d4 && retenue === d0) ||
    (lhs === d4 && rhs === d1 && mem === d0 && result === d5 && retenue === d0) ||
    (lhs === d4 && rhs === d2 && mem === d0 && result === d6 && retenue === d0) ||
    (lhs === d4 && rhs === d3 && mem === d0 && result === d7 && retenue === d0) ||
    (lhs === d4 && rhs === d4 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d4 && rhs === d5 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d4 && rhs === d6 && mem === d0 && result === d0 && retenue === d1) ||
    (lhs === d4 && rhs === d7 && mem === d0 && result === d1 && retenue === d1) ||
    (lhs === d4 && rhs === d8 && mem === d0 && result === d2 && retenue === d1) ||
    (lhs === d4 && rhs === d9 && mem === d0 && result === d3 && retenue === d1) ||

    (lhs === d5 && rhs === d0 && mem === d0 && result === d5 && retenue === d0) ||
    (lhs === d5 && rhs === d1 && mem === d0 && result === d6 && retenue === d0) ||
    (lhs === d5 && rhs === d2 && mem === d0 && result === d7 && retenue === d0) ||
    (lhs === d5 && rhs === d3 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d5 && rhs === d4 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d5 && rhs === d5 && mem === d0 && result === d0 && retenue === d1) ||
    (lhs === d5 && rhs === d6 && mem === d0 && result === d1 && retenue === d1) ||
    (lhs === d5 && rhs === d7 && mem === d0 && result === d2 && retenue === d1) ||
    (lhs === d5 && rhs === d8 && mem === d0 && result === d3 && retenue === d1) ||
    (lhs === d5 && rhs === d9 && mem === d0 && result === d4 && retenue === d1) ||

    (lhs === d6 && rhs === d0 && mem === d0 && result === d6 && retenue === d0) ||
    (lhs === d6 && rhs === d1 && mem === d0 && result === d7 && retenue === d0) ||
    (lhs === d6 && rhs === d2 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d6 && rhs === d3 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d6 && rhs === d4 && mem === d0 && result === d0 && retenue === d1) ||
    (lhs === d6 && rhs === d5 && mem === d0 && result === d1 && retenue === d1) ||
    (lhs === d6 && rhs === d6 && mem === d0 && result === d2 && retenue === d1) ||
    (lhs === d6 && rhs === d7 && mem === d0 && result === d3 && retenue === d1) ||
    (lhs === d6 && rhs === d8 && mem === d0 && result === d4 && retenue === d1) ||
    (lhs === d6 && rhs === d9 && mem === d0 && result === d5 && retenue === d1) ||

    (lhs === d7 && rhs === d0 && mem === d0 && result === d7 && retenue === d0) ||
    (lhs === d7 && rhs === d1 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d7 && rhs === d2 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d7 && rhs === d3 && mem === d0 && result === d0 && retenue === d1) ||
    (lhs === d7 && rhs === d4 && mem === d0 && result === d1 && retenue === d1) ||
    (lhs === d7 && rhs === d5 && mem === d0 && result === d2 && retenue === d1) ||
    (lhs === d7 && rhs === d6 && mem === d0 && result === d3 && retenue === d1) ||
    (lhs === d7 && rhs === d7 && mem === d0 && result === d4 && retenue === d1) ||
    (lhs === d7 && rhs === d8 && mem === d0 && result === d5 && retenue === d1) ||
    (lhs === d7 && rhs === d9 && mem === d0 && result === d6 && retenue === d1) ||

    (lhs === d8 && rhs === d0 && mem === d0 && result === d8 && retenue === d0) ||
    (lhs === d8 && rhs === d1 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d8 && rhs === d2 && mem === d0 && result === d0 && retenue === d1) ||
    (lhs === d8 && rhs === d3 && mem === d0 && result === d1 && retenue === d1) ||
    (lhs === d8 && rhs === d4 && mem === d0 && result === d2 && retenue === d1) ||
    (lhs === d8 && rhs === d5 && mem === d0 && result === d3 && retenue === d1) ||
    (lhs === d8 && rhs === d6 && mem === d0 && result === d4 && retenue === d1) ||
    (lhs === d8 && rhs === d7 && mem === d0 && result === d5 && retenue === d1) ||
    (lhs === d8 && rhs === d8 && mem === d0 && result === d6 && retenue === d1) ||
    (lhs === d8 && rhs === d9 && mem === d0 && result === d7 && retenue === d1) ||

    (lhs === d9 && rhs === d0 && mem === d0 && result === d9 && retenue === d0) ||
    (lhs === d9 && rhs === d1 && mem === d0 && result === d0 && retenue === d1) ||
    (lhs === d9 && rhs === d2 && mem === d0 && result === d1 && retenue === d1) ||
    (lhs === d9 && rhs === d3 && mem === d0 && result === d2 && retenue === d1) ||
    (lhs === d9 && rhs === d4 && mem === d0 && result === d3 && retenue === d1) ||
    (lhs === d9 && rhs === d5 && mem === d0 && result === d4 && retenue === d1) ||
    (lhs === d9 && rhs === d6 && mem === d0 && result === d5 && retenue === d1) ||
    (lhs === d9 && rhs === d7 && mem === d0 && result === d6 && retenue === d1) ||
    (lhs === d9 && rhs === d8 && mem === d0 && result === d7 && retenue === d1) ||
    (lhs === d9 && rhs === d9 && mem === d0 && result === d8 && retenue === d1) ||


    (lhs === d0 && rhs === d0 && mem === d1 && result === d1 && retenue === d0) ||
    (lhs === d0 && rhs === d1 && mem === d1 && result === d2 && retenue === d0) ||
    (lhs === d0 && rhs === d2 && mem === d1 && result === d3 && retenue === d0) ||
    (lhs === d0 && rhs === d3 && mem === d1 && result === d4 && retenue === d0) ||
    (lhs === d0 && rhs === d4 && mem === d1 && result === d5 && retenue === d0) ||
    (lhs === d0 && rhs === d5 && mem === d1 && result === d6 && retenue === d0) ||
    (lhs === d0 && rhs === d6 && mem === d1 && result === d7 && retenue === d0) ||
    (lhs === d0 && rhs === d7 && mem === d1 && result === d8 && retenue === d0) ||
    (lhs === d0 && rhs === d8 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d0 && rhs === d9 && mem === d1 && result === d0 && retenue === d0) ||

    (lhs === d1 && rhs === d0 && mem === d1 && result === d2 && retenue === d0) ||
    (lhs === d1 && rhs === d1 && mem === d1 && result === d3 && retenue === d0) ||
    (lhs === d1 && rhs === d2 && mem === d1 && result === d4 && retenue === d0) ||
    (lhs === d1 && rhs === d3 && mem === d1 && result === d5 && retenue === d0) ||
    (lhs === d1 && rhs === d4 && mem === d1 && result === d6 && retenue === d0) ||
    (lhs === d1 && rhs === d5 && mem === d1 && result === d7 && retenue === d0) ||
    (lhs === d1 && rhs === d6 && mem === d1 && result === d8 && retenue === d0) ||
    (lhs === d1 && rhs === d7 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d1 && rhs === d8 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d1 && rhs === d9 && mem === d1 && result === d1 && retenue === d1) ||

    (lhs === d2 && rhs === d0 && mem === d1 && result === d3 && retenue === d0) ||
    (lhs === d2 && rhs === d1 && mem === d1 && result === d4 && retenue === d0) ||
    (lhs === d2 && rhs === d2 && mem === d1 && result === d5 && retenue === d0) ||
    (lhs === d2 && rhs === d3 && mem === d1 && result === d6 && retenue === d0) ||
    (lhs === d2 && rhs === d4 && mem === d1 && result === d7 && retenue === d0) ||
    (lhs === d2 && rhs === d5 && mem === d1 && result === d8 && retenue === d0) ||
    (lhs === d2 && rhs === d6 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d2 && rhs === d7 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d2 && rhs === d8 && mem === d1 && result === d1 && retenue === d1) ||
    (lhs === d2 && rhs === d9 && mem === d1 && result === d2 && retenue === d1) ||

    (lhs === d3 && rhs === d0 && mem === d1 && result === d4 && retenue === d0) ||
    (lhs === d3 && rhs === d1 && mem === d1 && result === d5 && retenue === d0) ||
    (lhs === d3 && rhs === d2 && mem === d1 && result === d6 && retenue === d0) ||
    (lhs === d3 && rhs === d3 && mem === d1 && result === d7 && retenue === d0) ||
    (lhs === d3 && rhs === d4 && mem === d1 && result === d8 && retenue === d0) ||
    (lhs === d3 && rhs === d5 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d3 && rhs === d6 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d3 && rhs === d7 && mem === d1 && result === d1 && retenue === d1) ||
    (lhs === d3 && rhs === d8 && mem === d1 && result === d2 && retenue === d1) ||
    (lhs === d3 && rhs === d9 && mem === d1 && result === d3 && retenue === d1) ||

    (lhs === d4 && rhs === d0 && mem === d1 && result === d5 && retenue === d0) ||
    (lhs === d4 && rhs === d1 && mem === d1 && result === d6 && retenue === d0) ||
    (lhs === d4 && rhs === d2 && mem === d1 && result === d7 && retenue === d0) ||
    (lhs === d4 && rhs === d3 && mem === d1 && result === d8 && retenue === d0) ||
    (lhs === d4 && rhs === d4 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d4 && rhs === d5 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d4 && rhs === d6 && mem === d1 && result === d1 && retenue === d1) ||
    (lhs === d4 && rhs === d7 && mem === d1 && result === d2 && retenue === d1) ||
    (lhs === d4 && rhs === d8 && mem === d1 && result === d3 && retenue === d1) ||
    (lhs === d4 && rhs === d9 && mem === d1 && result === d4 && retenue === d1) ||

    (lhs === d5 && rhs === d0 && mem === d1 && result === d6 && retenue === d0) ||
    (lhs === d5 && rhs === d1 && mem === d1 && result === d7 && retenue === d0) ||
    (lhs === d5 && rhs === d2 && mem === d1 && result === d8 && retenue === d0) ||
    (lhs === d5 && rhs === d3 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d5 && rhs === d4 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d5 && rhs === d5 && mem === d1 && result === d1 && retenue === d1) ||
    (lhs === d5 && rhs === d6 && mem === d1 && result === d2 && retenue === d1) ||
    (lhs === d5 && rhs === d7 && mem === d1 && result === d3 && retenue === d1) ||
    (lhs === d5 && rhs === d8 && mem === d1 && result === d4 && retenue === d1) ||
    (lhs === d5 && rhs === d9 && mem === d1 && result === d5 && retenue === d1) ||

    (lhs === d6 && rhs === d0 && mem === d1 && result === d7 && retenue === d0) ||
    (lhs === d6 && rhs === d1 && mem === d1 && result === d8 && retenue === d0) ||
    (lhs === d6 && rhs === d2 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d6 && rhs === d3 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d6 && rhs === d4 && mem === d1 && result === d1 && retenue === d1) ||
    (lhs === d6 && rhs === d5 && mem === d1 && result === d2 && retenue === d1) ||
    (lhs === d6 && rhs === d6 && mem === d1 && result === d3 && retenue === d1) ||
    (lhs === d6 && rhs === d7 && mem === d1 && result === d4 && retenue === d1) ||
    (lhs === d6 && rhs === d8 && mem === d1 && result === d5 && retenue === d1) ||
    (lhs === d6 && rhs === d9 && mem === d1 && result === d6 && retenue === d1) ||

    (lhs === d7 && rhs === d0 && mem === d1 && result === d8 && retenue === d0) ||
    (lhs === d7 && rhs === d1 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d7 && rhs === d2 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d7 && rhs === d3 && mem === d1 && result === d1 && retenue === d1) ||
    (lhs === d7 && rhs === d4 && mem === d1 && result === d2 && retenue === d1) ||
    (lhs === d7 && rhs === d5 && mem === d1 && result === d3 && retenue === d1) ||
    (lhs === d7 && rhs === d6 && mem === d1 && result === d4 && retenue === d1) ||
    (lhs === d7 && rhs === d7 && mem === d1 && result === d5 && retenue === d1) ||
    (lhs === d7 && rhs === d8 && mem === d1 && result === d6 && retenue === d1) ||
    (lhs === d7 && rhs === d9 && mem === d1 && result === d7 && retenue === d1) ||

    (lhs === d8 && rhs === d0 && mem === d1 && result === d9 && retenue === d0) ||
    (lhs === d8 && rhs === d1 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d8 && rhs === d2 && mem === d1 && result === d1 && retenue === d1) ||
    (lhs === d8 && rhs === d3 && mem === d1 && result === d2 && retenue === d1) ||
    (lhs === d8 && rhs === d4 && mem === d1 && result === d3 && retenue === d1) ||
    (lhs === d8 && rhs === d5 && mem === d1 && result === d4 && retenue === d1) ||
    (lhs === d8 && rhs === d6 && mem === d1 && result === d5 && retenue === d1) ||
    (lhs === d8 && rhs === d7 && mem === d1 && result === d6 && retenue === d1) ||
    (lhs === d8 && rhs === d8 && mem === d1 && result === d7 && retenue === d1) ||
    (lhs === d8 && rhs === d9 && mem === d1 && result === d8 && retenue === d1) ||

    (lhs === d9 && rhs === d0 && mem === d1 && result === d0 && retenue === d0) ||
    (lhs === d9 && rhs === d1 && mem === d1 && result === d1 && retenue === d1) ||
    (lhs === d9 && rhs === d2 && mem === d1 && result === d2 && retenue === d1) ||
    (lhs === d9 && rhs === d3 && mem === d1 && result === d3 && retenue === d1) ||
    (lhs === d9 && rhs === d4 && mem === d1 && result === d4 && retenue === d1) ||
    (lhs === d9 && rhs === d5 && mem === d1 && result === d5 && retenue === d1) ||
    (lhs === d9 && rhs === d6 && mem === d1 && result === d6 && retenue === d1) ||
    (lhs === d9 && rhs === d7 && mem === d1 && result === d7 && retenue === d1) ||
    (lhs === d9 && rhs === d8 && mem === d1 && result === d8 && retenue === d1) ||
    (lhs === d9 && rhs === d9 && mem === d1 && result === d9 && retenue === d1)
}

//Aide pour la fonction reverse
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

//l in nombre, r in nombre
//-----------------------
//l+r in nombre


func add (_ lhs: Term, _ rhs: Term) -> Map {
      return [
        "op"  : Value("add"),
        "lhs" : lhs,
        "rhs" : rhs,
    ]
}

//l in nombre, r in nombre
//-----------------------
//l-r in nombre

func subtract (_ lhs: Term, _ rhs: Term) -> Map {
      return [
        "op"  : Value("substract"),
        "lhs" : lhs,
        "rhs" : rhs,
    ]
}

//l in nombre, r in nombre
//-----------------------
//l*r in nombre

func multiply (_ lhs: Term, _ rhs: Term) -> Map {
    return [
      "op"  : Value("multiply"),
      "lhs" : lhs,
      "rhs" : rhs,
    ]
}

//l in nombre, r in nombre
//-----------------------
//l/r in nombre

func divide (_ lhs: Term, _ rhs: Term) -> Map {
      return [
      "op"  : Value("divide"),
      "lhs" : lhs,
      "rhs" : rhs,
    ]
}

// Booleans:

//
//-----------------------
//True in Bool

//
//-----------------------
//False in Bool


let t = Value (true)
let f = Value (false)

//a in Bool
//-----------------------
//not a in Bool

func not (_ of: Term) -> Map {

      return [
      "op"  : Value("not"),
      "term" : of,
    ]

}

//l in Bool, r in Bool
//-----------------------
//l and r in Bool

func and (_ lhs: Term, _ rhs: Term) -> Map {
      return [
      "op"  : Value("and"),
      "lhs" : lhs,
      "rhs" : rhs,
    ]

}

//l in Bool, r in Bool
//-----------------------
//l or r in Bool

func or (_ lhs: Term, _ rhs: Term) -> Map {
      return [
      "op"  : Value("or"),
      "lhs" : lhs,
      "rhs" : rhs,
    ]

}

//l in Bool, r in Bool
//-----------------------
//l implies r in Bool

func implies (_ lhs: Term, _ rhs: Term) -> Map {

    return [
        "op"  : Value("implies"),
        "lhs" : lhs,
        "rhs" : rhs,
    ]
}

// Comparisons:

//l in Nombre, r in Nombre
//-----------------------
//l < r in Bool


func lessthan (_ lhs: Term, _ rhs: Term) -> Map {

    return [
        "op"  : Value("lt"),
        "lhs" : lhs,
        "rhs" : rhs,
    ]
}

//l in Nombre, r in Nombre
//-----------------------
//l <= r in Bool

func lessequal (_ lhs: Term, _ rhs: Term) -> Map{

    return [
        "op"  : Value("le"),
        "lhs" : lhs,
        "rhs" : rhs,
    ]

}

//l in Nombre, r in Nombre
//-----------------------
//l > r in Bool

func greaterthan (_ lhs: Term, _ rhs: Term) -> Map {

      return [
          "op"  : Value("gt"),
          "lhs" : lhs,
          "rhs" : rhs,
      ]
}

//l in Nombre, r in Nombre
//-----------------------
//l >= r in Bool

func greaterequal (_ lhs: Term, _ rhs: Term) -> Map {

      return [
          "op"  : Value("ge"),
          "lhs" : lhs,
          "rhs" : rhs,
      ]
}

//l in Nombre, r in Nombre
//-----------------------
//l = r in Bool


func equal (_ lhs: Term, _ rhs: Term) -> Map {

      return [
          "op"  : Value("eq"),
          "lhs" : lhs,
          "rhs" : rhs,
      ]
}

//l in Nombre, r in Nombre
//-----------------------
//l != r in Bool

func notequal (_ lhs: Term, _ rhs: Term) -> Map {

      return [
          "op"  : Value("ne"),
          "lhs" : lhs,
          "rhs" : rhs,
      ]

}

// Evaluation:

//évaluation binaire. bien inspirée de ce qu'on a fait en exercice
func binary (input: Term, output: Term, op: @escaping (Term, Term) -> Term, semantics: @escaping (Term, Term, Term) -> Goal) -> Goal {
  return freshn { g in
    let l  = g ["l"]
    let r  = g ["r"]
    let lv = g ["lv"]
    let rv = g ["rv"]
    return input === op (l, r) &&
           eval (input: l, output: lv) &&
           eval (input: r, output: rv) &&
           inEnvironment { s in
             return  semantics (s [lv], s [rv], output)
           }
  }
}



//enlève les 0 au début d'un nomre non retourné
func enleveZero(avec: Term, sans: Term) -> Goal{
  return
    freshn{g in
      let ah = g["ah"]
      let at = g["at"]

      return
        avec === List.cons(ah, at) && (
        ((ah === d0) && enleveZero(avec: at, sans: sans)) ||
        ( ((ah === d1) || (ah === d2) || (ah === d3) || (ah === d4) || (ah === d5) || (ah === d6) || (ah === d7) || (ah === d8) || (ah === d9))  && avec === sans))
        //C'est long et moche, mais je ne voyais pas d'autre moyen
    }
}

func addHelp(lhs: Term, rhs: Term, mem: Term, result: Term) -> Goal {
  return
    (lhs === List.empty && rhs === result && mem === d0) || //Les cas ou un des deux terme vaut 0
    (rhs === List.empty && lhs === result && mem === d0) ||

    freshn{ g in // h pour head, t pour tail, les nombres sont déjà retournés.
      let lh = g["lh"]
      let lt = g["lt"]
      let rh = g["rh"]
      let rt = g["rt"]
      let resh = g["resh"]
      let rest = g["rest"]

      let chiffre = g["chiffre"]
      let retenue = g["retenue"]
        return
          (lhs === List.cons(lh, lt) && rhs === List.cons(rh,rt) && result === List.cons(resh, rest) &&
          addChiffres(lhs: lh, rhs: rh, mem: mem, result: chiffre, retenue: retenue) && addHelp(lhs: lt, rhs: rt, mem: retenue, result: rest))

    }
}

func addImp(lhs: Term, rhs: Term, result: Term) -> Goal{
  return
    freshn {g in //r pour reversed
      let lhsr = g["lhsr"]
      let rhsr = g["rhsr"]
      let resr = g["resr"]


      return //On ajoute 0 au début des nombres pour être sûr de terminer sur une addition sans retenue. (et on s'occupera des 0 exessifs plus tard)
        (reverse(list: List.cons(d0, lhs), reversed: lhsr ) && reverse(list: List.cons(d0, rhs), reversed: rhsr) && reverse(list: result, reversed: resr) &&
        addHelp(lhs: lhsr, rhs: rhsr, mem: d0, result: resr)) ||
        //On prend en compte le fait qu'on peut (ou pas) ajouter un chiffre grâce à la retenue dans la dernière étape de calcul.
        (reverse(list: List.cons(d0, lhs), reversed: lhsr ) && reverse(list: List.cons(d0, rhs), reversed: rhsr) && reverse(list: List.cons(d0,result), reversed: resr) &&
        addHelp(lhs: lhsr, rhs: rhsr, mem: d0, result: resr))
    }

}

func evalArithmetic (input: Term, output: Term) -> Goal {
    return  binary(input: input, output: output, op: add, semantics: addImp)

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
