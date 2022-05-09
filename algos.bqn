# Print "Hello world"
q1 ← "Hello world"
# q1

# Greet based on inputted name
Q2 ← "Hello "⊸∾
# Q2 "James"

# Only greet if inputted name is "Alice" or "Bob"
Q3 ← { ∨´𝕩⊸≡¨"Alice"‿"Bob" ? "Hello "∾𝕩 ; @ }
# Q3 "James"
# Q3 "Bob"

# Sum 1 to n
Q4 ← +´∘↕+⟜1
# Q4 10

# Sum multiples of 3 or 5 between 1 and n
Q5 ← +´((∨´0=3‿5⊸|)˘⊸/1+↕)
# Q5 10

# Sum or product 1 to n
_Q6 ← { 𝔽´1+↕𝕩 }
# +_Q6 10
# ×_Q6 10

# Multiplication table up to 12
q7 ← ×⌜˜1+↕12
# q7

# Primes less than n
Q8 ← ¬∘∊⟜(⥊×⌜˜)⊸/2↓↕
# Q8 100

# Number guessing game
Q9 ← {
  n ← •rand.Range 𝕩
  done ← 0
  Guess ⇐ {
    done ? "Game already over"
    ; 𝕩=n ? done↩1, "You guessed the number!"
    ; 𝕩>n ? "Too high!"
    ; 𝕩<n ? "Too low!"
  }
}
# game ← Q9 100
# game.Guess 69

# Next 20 leap yrs
Q10 ← 

# Pi approximation
q11 ← 4×+´((¯1⋆1+⊢)÷1-˜2×⊢)1+↕1e6
# q11