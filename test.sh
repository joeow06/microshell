rm microshell
rm my_output.txt
rm bash_output.txt

echo "Compilling microshell"
gcc -Wall -Werror -Wextra microshell.c -o microshell
echo "Finish compiling"

echo "-> Running microshell"
ulimit -n 30; ./microshell /usr/bin/ls -laR hello "|" /usr/bin/grep start "|" /bin/awk '{print $9}' "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" \
/usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e "|" /usr/bin/cat -e \
> my_output.txt

echo "-> Running bash"
ulimit -n 30; /usr/bin/ls -laR hello | /usr/bin/grep start | /bin/awk '{print $9}' | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | \
/usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e | /usr/bin/cat -e  \
> bash_output.txt 
sleep 1

echo "\\nComparing Output..."

diff -U 3 my_output.txt bash_output.txt | cat -e

echo "done"
