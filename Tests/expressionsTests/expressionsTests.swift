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
      let goal = addChiffres(lhs: d7, rhs: d6, result: d3, retenue: v)
      let expected = d1
      for sub in solve(goal) {
            let r = sub.reified()
            XCTAssert(r[v].equals(expected), "addChiffres is incorrect in retenue")
        }
      }

      func testAddChiffresValue() {
        let v = Variable (named: "v")
        let goal = addChiffres(lhs: d8, rhs: d5, result: v, retenue: d1)
        let expected = d3
        for sub in solve(goal) {
              let r = sub.reified()
              XCTAssert(r[v].equals(expected), "addChiffres is incorrect in value")
          }
        }

      func testReverse() {
        let v = Variable (named: "v")
        let goal = reverse(list: toNumber(4541), reversed: v)
        let expected = toNumber(1415)
        for sub in solve(goal) {
              let r = sub.reified()
              XCTAssert(r[v].equals(expected), "Reverse is incorrect")
          }
      }



    static var allTests : [(String, (expressionsTests) -> () throws -> Void)] {
        return [
            ("testToNumber", testToNumber),
            ("testAddChiffresRet", testAddChiffresRet),
            ("testAddChiffresValue", testAddChiffresValue),
        ]
    }

}
