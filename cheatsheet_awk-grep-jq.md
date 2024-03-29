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
- Filtering by field
```
$ awk -F "|" '$5 < 4000 ' file.txt
OR
$ awk -F "|" -v low_salary="4000" '$5 < low_salary ' file.txt
$ awk -F "|" -v low_salary="4000" '$5 < low_salary { print $4 } ' file.txt
OR
awk -F "|" -v low_salary="4000" -v high_salary=4500 -v header="------my header-------" 'BEGIN { print header } $5 >= high_salary || $5 <= low_salary { print $2, $5}' pipe_example.txt

08|garca|branca|branca_a_garca@gmail.com|1000
09|micael|o gato|micael@gmail.com|2000

/// file.txt
06|amazonia|mosquiteira|am_mosquiteira@gmail.com|4500
07|jacare|pantanoso|pantanoso@gmail.com|4000
08|garca|branca|branca_a_garca@gmail.com|1000
09|micael|o gato|micael@gmail.com|2000
```

# GREP
```
egrep "message" -rc * 2>/dev/null | grep -v :0
cat journalblah | grep 'Sep 20 23:' | grep 'message' | tail -n 1
cat journalblah | grep 'Sep 20' | grep 'message' | wc -l
cat data | jq .user.username -r | sort | uniq -c | sort -n
```

# JQ
```
oc get pods -o json | jq ".items[] | { pod_name: .metadata.name, containers: ( .spec.containers[].resources | { requests } ) }"

{
  "pod_name": "logging-loki-gateway-68d8b7744b-qvlw6",
  "containers": {
    "requests": {
      "cpu": "500m",
      "memory": "500Mi"
    }
  }
}
{
  "pod_name": "logging-loki-gateway-68d8b7744b-qvlw6",
  "containers": {
    "requests": null
```
