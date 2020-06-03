function Meta(m)
    m.title = "Appendices"
    m.author = "Dr. Ivo Balbaert"
    return m
end

function Pandoc(doc)
    local hblocks = {}
    for i,el in pairs(doc.blocks) do
        if (el.t == "Span" and el.classes[1] == "underline") then
           table.insert(hblocks, el)
        end
    end
    return pandoc.Pandoc(hblocks, doc.meta)
end

-- <span class="underline">Transforming G programs into V programs</span>
-- <span class="underline">Keywords</span>