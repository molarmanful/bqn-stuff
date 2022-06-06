# Print "Hello world"
e1 ← "Hello world"
# •Out e1

# Greet based on inputted name
E2 ← "Hello "⊸∾
# •Out E2 "James"

# Only greet if inputted name is "Alice" or "Bob"
E3 ← "Hello "⊸∾⍟(⊑"Alice"‿"Bob"∊˜⋈)
# •Out E3 "James"
# •Out E3 "Bob"

# Sum 1 to n
E4 ← +´∘↕+⟜1
# •Out E4 10

# Sum multiples of 3 or 5 between 1 and n
E5 ← +´((∨´0=3‿5⊸|)˘⊸/1+↕)
# •Out E5 10

# Sum or product 1 to n
_E6 ← { 𝔽´1+↕𝕩 }
# •Out +_E6 10
# •Out ×_E6 10

# Multiplication table up to 12
e7 ← ×⌜˜1+↕12
# •Show e7

# Primes less than n
E8 ← ¬∘∊⟜(⥊×⌜˜)⊸/2↓↕
# •Show E8 100

# Number guessing game
E9 ← {
  n ← •rand.Range 𝕩
  done ← 0
  Guess ⇐ {
    done ? "Game already over";
    𝕩=n ? "You guessed the number!", done↩1;
    𝕩>n ? "Too high!";
    𝕩<n ? "Too low!"
  }
}
# game ← E9 100
# game.Guess 69

# Next 20 leap yrs
e10 ← 20↑(≠˝0=400‿100‿4|⌜⊢)⊸/(4⊸|⊸+⌊1970+31536e3÷˜•UnixTime@)+4×↕21
# •Show e10

# Pi approximation
e11 ← 4×+´((¯1⋆1+⊢)÷1-˜2×⊢)1+↕1e6
# •Out e11

# Largest list element
L1 ← ⌈´
# •Out L1 1‿4‿2‿3‿8‿5‿3

# Reverse list
L2 ← ⌽
# •Out L2 1‿4‿2‿3‿8‿5‿3

# Check if element is in list
L3 ← ⊑∘∊
# •Out 3 L3 1‿4‿2‿3‿8‿5‿3

# Odd-indexed elements in list
L4 ← (2|⟜↕≠)⊸/
# •Show L4 1‿4‿2‿3‿8‿5‿3

# Cumulative sum of list
L5 ← +`
# •Out L5 1‿4‿2‿3‿8‿5‿3

# Palindrome test
L6 ← ⌽≡⊢
# •Out L6 "racecar"

# List sum w/ recursion
L7 ← { ⟨⟩: 0; ⊑+⟜𝕊1⊸↓𝕩 }
•Out L7 1‿4‿2‿3‿8‿5‿3

# First 20 perfect squares
l8 ← ×˜1+↕20
# •Show l8

# List concatenation
L9 ← ∾
# •Show 1‿4‿2‿3‿8‿5‿3 L9 6‿3‿4‿9‿1‿7‿2

# Alternate 2 lists
L10 ← ⥊∘⍉≍
# •Show 1‿4‿2‿3‿8‿5‿3 L9 6‿3‿4‿9‿1‿7‿2

# Merge sorted list (non-trivial solution)
L11 ← {
  𝕩∨○⟨⟩⊸≡𝕨 ? 𝕨∾𝕩;
  𝕊{ (⊑⊑𝕩)∾𝔽´1↓⌾⊑𝕩 }∧𝕨‿𝕩
}
# •Show 1‿4‿9 L11 2‿3‿5‿8

# Rotate list
L12 ← ⌽
# •Show 2 L12 1‿4‿2‿3‿8‿5‿3

# First 100 Fibonacci numbers
l13 ← ∾⟜(+´2↑⌽)⍟100 1‿1
# •Show l13

# Number to digit array
L14 ← •Fmt-'0'˙
# •Show L14 1234

# Digit list add/sub/mul
l15 ← {
  Carry ⇐ {
    n ← 0
    n∾⍟(n>0){ 𝕩+↩n, n↩⌊𝕩÷10, 10|𝕩 }¨⌾⌽𝕩
  }
  Add ⇐ {
    𝕨<○≠𝕩 ? 𝕩𝕊𝕨;
    𝕨>○≠𝕩 ? 𝕨𝕊𝕩↑˜-≠𝕨;
    Carry •Show 𝕨+𝕩
  }
}
# •Show 1‿4‿2‿3‿8‿5‿3 l15.Add 6‿3‿4‿9‿1‿7‿2
# •Show 1‿4‿2‿3‿8‿5‿3 l15.Sub 6‿3‿4‿9‿1‿7‿2
# •Show 1‿4‿2‿3‿8‿5‿3 l15.Mul 6‿3‿4‿9‿1‿7‿2

# Convert digit list between bases
_l16_ ← {
  Dec ← { 𝕨⊸×⊸+˜´∘⌽𝕩 }
  Base ← { 𝕨𝕊0: ⟨⟩; (𝕨𝕊⌊𝕩÷𝕨)∾𝕨|𝕩 }
  𝕘⊸Base 𝕗⊸Dec
}
# •Show (3 _l16_ 10) 2‿1‿0

# Sorting algorithms
l17 ← {
  Swap ⇐ { ⌽⌾(𝕨⊸⊏)𝕩 }
  Ins ⇐ {
    a𝕊⟨⟩: ⋈a;
    𝕨<⊑𝕩 ? ⟨𝕨, ⊑𝕩⟩∾1↓𝕩;
    (⊑𝕩)∾𝕨𝕊1↓𝕩
  }
  Mer ⇐ {
    𝕩∨○⟨⟩⊸≡𝕨 ? 𝕨∾𝕩;
    𝕊{ (⊑⊑𝕩)∾𝔽´1↓⌾⊑𝕩 }∧𝕨‿𝕩
  }

  Sesort ⇐ {
    ⟨⟩: 𝕩;
    i ← ⊑∘⍋𝕩
    (i⊑𝕩)∾𝕊1↓0‿i Swap 𝕩
  }
  Isort ⇐ {
    ⟨⟩: 𝕩;
    (⊑𝕩) Ins 𝕊1↓𝕩
  }
  Msort ⇐ {
    1≥≠𝕩 ? 𝕩;
    n ← ⌊2÷˜≠𝕩
    (n↑𝕩) Mer○𝕊 n↓𝕩
  }
  Qsort ⇐ {
    1≥≠𝕩 ? 𝕩;
    a‿b ← ∾⟜⟨⟨⟩⟩⍟(1≥≠) ≥⟜(⊑𝕩)⊸⊔1↓𝕩
    ∾⟨𝕊a, ⊑𝕩, 𝕊b⟩
  }
  Stsort ⇐ {
    𝕊𝕩: ⟨0, ¯1+≠𝕩⟩𝕊𝕩;
    i‿j𝕊𝕩:
      𝕊 {
        t ← ⌊3÷˜1+j-i
        ⟨i, j-t⟩𝔽⟨i+t, j⟩𝔽⟨i, j-t⟩𝔽𝕩
      }⍟(1<j-i) ∧⌾(i‿j⊸⊏)𝕩
  }
}
# •Show l17.Sesort 1‿4‿2‿3‿8‿5‿3
# •Show l17.Isort 1‿4‿2‿3‿8‿5‿3
# •Show l17.Msort 1‿4‿2‿3‿8‿5‿3
# •Show l17.Qsort 1‿4‿2‿3‿8‿5‿3
# •Show l17.Stsort 1‿4‿2‿3‿8‿5‿3

# Binary search
L18 ← ⍋
# •Show 1‿2‿5‿8‿9‿10 L18 5

# Print list of strings in rectangular frame
L19 ← {
  m ← ⌈´≠¨𝕩
  b ← "*"⥊˜m+4
  •Out b
  {•Out ∾⟨"* ", m↑𝕩, " *"⟩}¨𝕩
  •Out b
}
# L19 "Hello"‿"World"‿"in"‿"a"‿"frame"

# Pig Latin translator
l20 ← {
  Split ⇐ ' '⊸((⊢-˜+`×¬)∘=⊔⊢)
  Join ⇐ ∾⟜' '⊸∾´
  IsA ⇐ 'A'⊸≤⊸∧⟜(≤⟜'Z')
  Cap ⇐ (-⟜32⌾⊏+⟜32⍟IsA¨)⍟(∨´IsA¨)
  To ⇐ Join(Cap∘∾⟜"ay"1⊸⌽)¨∘Split
  From ⇐ Join Cap∘(¯1⌽¯2⊸↓)⍟("ay"≡¯2⊸↑)¨∘Split
}
# •Out l20.To "The quick brown fox"
# •Out l20.From "Hetay uickqay rownbay oxfay"

# All possibilities to put +, -, or nothing between 1-9 such that result is 100
i1 ← (100=•BQN)¨⊸/'1'(∾{(𝕩∾∾⟜𝕨)¨""‿"+"‿"-"}¨)´⌽'2'+↕8
# •Show i1

I2 ← ⌊0.5+÷˜´
# •Out I2 101‿400