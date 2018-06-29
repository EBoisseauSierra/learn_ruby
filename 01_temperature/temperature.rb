def ftoc temp_in_F
    (temp_in_F.to_f - 32) * 5 / 9
end

def ctof temp_in_C
    temp_in_C.to_f * 9 / 5 + 32
end
