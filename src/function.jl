function funcplus(func1, funcs...)
  function (k...)
    v = func1(k...)
    for func in funcs
      v += func(k...)
    end
    v
  end
end

function functimes(func1, funcs...)
  function (k...)
    v = func1(k...)
    for func in funcs
      v *= func(k...)
    end
    v
  end
end
