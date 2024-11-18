#!/bin/bash
function guess_files {
    local file_count=$(ls -1 | wc -l)
    while true; do
        echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"
        read guess
        if [[ $guess -eq $file_count ]]; then
            echo "Félicitations ! Vous avez deviné correctement."
            break
        elif [[ $guess -lt $file_count ]]; then
            echo "Trop bas. Essayez encore."
        else
            echo "Trop haut. Essayez encore."
        fi
    done
}
guess_files
