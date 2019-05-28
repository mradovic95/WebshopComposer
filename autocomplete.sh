
#autocomplete
#http://fahdshariff.blogspot.com/2011/04/writing-your-own-bash-completion.html

#tr
#http://askubuntu.com/questions/164056/how-do-i-combine-all-lines-in-a-text-file-into-a-single-line
#cat myfile.txt | tr -d '\n' '  ' > oneline.txt
#cat myfile.txt | tr -d '\n' > oneline.txt

#sed
#http://www.cyberciti.biz/faq/unix-linux-replace-string-words-in-many-files/

_initmodule()
{
	local cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=( $(compgen -W "$(find . -maxdepth 5 -type f -name init.sh | sed 's/.\/modules\///g' | sed 's/\/init\.sh//g' | tr '\n' ' ')" -- $cur) )
}
complete -F _initmodule ./bin/initmodule

_initmanifest()
{
	local cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=( $(compgen -W "$(find manifest/ -type f  | sed 's/manifest\///g' | sed 's/\.sh//g' | tr '\n' ' ')" -- $cur) )
}
complete -F _initmanifest ./bin/initmanifest
