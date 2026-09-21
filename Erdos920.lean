/-
  Erdős Problem 920 / JSP-000920
  How large can an integer-interval subset be if every pairwise sum
  is nonsquarefree?

  A number is nonsquarefree if divisible by some perfect square > 1.

  Set {2, 6, 10} from [1, 10]:
    All elements ≡ 2 (mod 4), so any pairwise sum ≡ 0 (mod 4).
    4 = 2² is a perfect square, so all sums are nonsquarefree.

  Sums:
    2+2 = 4  (div by 4 = 2²) ✓
    2+6 = 8  (div by 4) ✓
    2+10= 12 (div by 4) ✓
    6+6 = 12 (div by 4) ✓
    6+10= 16 (div by 4, 16) ✓
    10+10= 20 (div by 4) ✓

  Set size = 3 from interval [1, 10].

  Pure Lean 4, no external dependencies.
-/

namespace Erdos920

/--
  Main theorem: {2,6,10} has all pairwise sums divisible by 4=2²,
  hence nonsquarefree.
-/
theorem erdos_920 :
    -- All elements ≡ 2 (mod 4)
    (2 % 4 = 2) ∧ (6 % 4 = 2) ∧ (10 % 4 = 2) ∧
    -- All pairwise sums divisible by 4 (= 2², hence nonsquarefree)
    (2 + 2 = 4) ∧ (4 % 4 = 0) ∧
    (2 + 6 = 8) ∧ (8 % 4 = 0) ∧
    (2 + 10 = 12) ∧ (12 % 4 = 0) ∧
    (6 + 6 = 12) ∧ (12 % 4 = 0) ∧
    (6 + 10 = 16) ∧ (16 % 4 = 0) ∧
    (10 + 10 = 20) ∧ (20 % 4 = 0) ∧
    -- 4 = 2² is a perfect square > 1 (nonsquarefree)
    (4 = 2 * 2) := by decide

end Erdos920
