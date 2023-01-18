def text_verifier(str)
  r1 = /\A[A-Z]/
  r2 = /\z[?!.]/
  r3 = Regexp.new(r1.source + r2.source)
  if str.match?(r3) != nil
    true
  end
end

