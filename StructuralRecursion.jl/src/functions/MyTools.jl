#additional functions I wrote for worksheet 3

function selectiveprint(L::Union{LinkedList, Nothing}, v::Float64)
    if (L != Nothing())
        if L.data.value > v
            println(L.data)
        end
        selectiveprint(L.next, v)
    end
end

function search(list::LinkedList, k::Int64)
    #As list is a LinkedList, I am assuming that it can't be of type Nothing
    #check the current node first
    if list.data.key == k
        return list.data
    end

    while list.next != Nothing()
        list = list.next
        if list.data.key == k
            return list.data
        end
    end
    
    return Nothing()
end
