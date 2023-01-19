def text_verifier(str)
  r1 = (/^[A-Z][\s\S]*?\+?[.?!](?:\n\n|$)/)
  if str.match?(r1) != nil
    true
  end
end

