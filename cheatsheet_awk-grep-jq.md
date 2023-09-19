# AWK
## Concepts
```
'{}' = Action Block
NR = Number of Records (built-in variable) --- Used to specify the line number of a set of text
```

### Example
- Assign variable to awk capture of word
```
adjetivo=`awk -v number=$number 'NR==number{ print $1 }' $file_adjetivos`
```
- FOR loop to interact with 2 columns of values as variables
```
count=$(wc -l list-audit.log)
for i in {1..$count}; do node=`awk -v i=$i 'NR==i { print $1}' list-audit.log` ; file=`awk -v i...audit.log`; oc adm node-logs $node --path=oauth-apiserver\/$file > $node_$file.txt ; done
```
- Arrays + awk
```
declare -a arr=() ; for i in $(oc get nodes --no-headers | awk '{print $1}'); do arr+=( "$i"); echo $i ; done
declare -a arr=() ; for i in $(oc get nodes --no-headers | awk '{print $1}'); do arr+=( "$i"); oc get nodes $i -o custom-columns=NAME:.metadata.name ; done
```
# GREP
```
egrep "message" -rc * 2>/dev/null | grep -v :0
cat journalblah | grep 'Sep 20 23:' | grep 'message' | tail -n 1
cat journalblah | grep 'Sep 20' | grep 'message' | wc -l
cat data | jq .user.username -r | sort | uniq -c | sort -n
```
