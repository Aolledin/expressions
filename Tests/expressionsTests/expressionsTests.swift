import XCTest
import LogicKit
@testable import expressions






class expressionsTests: XCTestCase {



    func testToNumber() {
        let expected : Term = List.cons (Value (5), List.cons (Value (1), List.empty))
        XCTAssert (toNumber (51).equals (expected), "toNumber is incorrect")
    }

    //vérifie que l'addition de chiffre est correct (m'a été utile)
    func testAddChiffresRet() {
      let v = Variable (named: "v")
      let goal = addChiffres(lhs: d7, rhs: d6,mem: d1, result: d4, retenue: v)
      let expected = d1
      for sub in solve(goal) {
            let r = sub.reified()
            XCTAssert(r[v].equals(expected), "addChiffres is incorrect in retenue")
        }
      }

      func testAddChiffresValue() {
        let v = Variable (named: "v")
        let goal = addChiffres(lhs: d8, rhs: d5,mem: d1, result: v, retenue: d1)
        let expected = d4
        for sub in solve(goal) {
              let r = sub.reified()
              XCTAssert(r[v].equals(expected), "addChiffres is incorrect in value")
          }
        }

      func testReverse() {
        let v = Variable (named: "v")
        let goal = reverse(list: toNumber(4541), reversed: v)
        let expected = toNumber(1454)
        for sub in solve(goal) {
              let r = sub.reified()
              XCTAssert(r[v].equals(expected), "Reverse is incorrect")
          }
      }

      func testEnleveZero(){
        let v = Variable (named: "v")
        let goal = enleveZero(avec: List.cons(d0, List.cons(d0, toNumber(4541))), sans: v)
        let expected = toNumber(4541)
        for sub in solve(goal) {
              let r = sub.reified()
              XCTAssert(r[v].equals(expected), "enleveZero is incorrect")
          }
      }

      func testAddHelp(){
        let v = Variable (named: "v")
        let goal = addHelp(lhs: toNumber(123), rhs: toNumber(111), mem: d0, result: v)
        let expected = toNumber(234)
        for sub in solve(goal) {
              let r = sub.reified()
              print(r[v])
              XCTAssert(r[v].equals(expected), "addHelp is incorrect")
          }

      }




    static var allTests : [(String, (expressionsTests) -> () throws -> Void)] {
        return [
            ("testToNumber", testToNumber),
            ("testAddChiffresRet", testAddChiffresRet),
            ("testAddChiffresValue", testAddChiffresValue),
            ("testReverse", testReverse),
            ("testEnleveZero", testEnleveZero),
            ("testAddHelp", testAddHelp)
            //("testAddImp", testAddImp),
        ]
    }

}
