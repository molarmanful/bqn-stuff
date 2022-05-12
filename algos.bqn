# Print "Hello world"
e1 ← "Hello world"
# q1

# Greet based on inputted name
E2 ← "Hello "⊸∾
# E2 "James"

# Only greet if inputted name is "Alice" or "Bob"
E3 ← { ∨´𝕩⊸≡¨"Alice"‿"Bob" ? "Hello "∾𝕩 ; @ }
# E3 "James"
# E3 "Bob"

# Sum 1 to n
E4 ← +´∘↕+⟜1
# E4 10

# Sum multiples of 3 or 5 between 1 and n
E5 ← +´((∨´0=3‿5⊸|)˘⊸/1+↕)
# E5 10

# Sum or product 1 to n
_E6 ← { 𝔽´1+↕𝕩 }
# +_E6 10
# ×_E6 10

# Multiplication table up to 12
e7 ← ×⌜˜1+↕12
# e7

# Primes less than n
E8 ← ¬∘∊⟜(⥊×⌜˜)⊸/2↓↕
# E8 100

# Number guessing game
E9 ← {
  n ← •rand.Range 𝕩
  done ← 0
  Guess ⇐ {
    done ? "Game already over"
    ; 𝕩=n ? done↩1, "You guessed the number!"
    ; 𝕩>n ? "Too high!"
    ; 𝕩<n ? "Too low!"
  }
}
# game ← E9 100
# game.Guess 69

# Next 20 leap yrs
e10 ← @

# Pi approximation
e11 ← 4×+´((¯1⋆1+⊢)÷1-˜2×⊢)1+↕1e6
# e11

# Largest list element
L1 ← ⌈´
# L1 1‿4‿2‿3‿8‿5‿3

# Reverse list
L2 ← ⌽
# L2 1‿4‿2‿3‿8‿5‿3

# Check if element is in list
L3 ← ⊑∘∊
# 3 L3 1‿4‿2‿3‿8‿5‿3

# Odd-indexed elements in list
L4 ← (2|⟜↕≠)⊸/
# L4 1‿4‿2‿3‿8‿5‿3

# Cumulative sum of list
L5 ← +`
# L5 1‿4‿2‿3‿8‿5‿3

# Palindrome test
L6 ← ⌽≡⊢
# L6 "racecar"

# List sum w/ recursion
L7 ← { 0=≠𝕩 ? 0 ; (⊑+⟜𝕊1⊸↓)𝕩 }
# L7 1‿4‿2‿3‿8‿5‿3

# First 20 perfect squares
l8 ← ×˜1+↕20
# l8