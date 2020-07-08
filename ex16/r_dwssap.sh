export FT_LINE1=2
export FT_LINE2=5

cat /etc/passwd | grep -v '\#' | sort -r | tr -d '\n'| paste -s -d"," - | \
sed 's/,/, /g' | sed 's/$/./' | sed '1!n;d' | cut -d':' -f1 | \
awk 'NR>= ENVIRON["FT_LINE1"] && NR<= ENVIRON["FT_LINE2"]' 
