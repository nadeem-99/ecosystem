for i in `cat cluster`; do
ssh -t -i ./security.pem ec2-user@$i $* 
done

