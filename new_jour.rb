require_relative "./source.rb"

def put_rep(list)     
    i = 4      
    time = list.max_by(&:length).length     
    time.times do
        if (list.any?{|word|word.length == i})
            puts "il y a #{list.select{|word|word.length == i}.count} mots de #{i} caractères de long."
        end
        i += 1
    end
end

def perform
handle = handle_array

    puts "Question 1"
    puts "Il y a #{handle.count} handle dans cette array."
    print"<-------------------------------------------------->\n"

    puts "Question 2"
    puts "Le handle le plus court est : #{handle.min_by(&:length)}."
    print"<-------------------------------------------------->\n"
    

    puts "Question 3"
    puts "Il y a #{handle.select{|word|word.length == 6 }.count} handles contenant 5 caractères."
    print"<-------------------------------------------------->\n"

    puts "Question 4"
    puts "Il y a #{handle.select{|word|word=~/^@[A-Z]/}.count} handles dont le nom commence par une majuscule."
    print"<-------------------------------------------------->\n"

    puts "Question 5"
    puts "Ci-dessous la liste triée par ordre alphabétique  : #{handle.sort}"
    print"<-------------------------------------------------->\n"

    puts "Question 6"
    puts "Ci-dessous la liste triée par taille : #{handle.sort_by(&:length)}"
    print"<-------------------------------------------------->\n"

    puts "Question 7"
    puts "@epenser est en position #{handle.index("@epenser")}"
    print"<-------------------------------------------------->\n"

    puts "Question 8"
    puts "Ci-dessous la liste des handles triés par taille "
    put_rep(handle)

end
perform

