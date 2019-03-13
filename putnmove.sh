SOURCE=$1
TARGET=$2
INTERIM=`basename $SOURCE`

for i in `cat cluster`; do
scp -i ./security.pem $SOURCE ec2-user@$i:~/
ssh -t -i ./security.pem ec2-user@$i "sudo cp $INTERIM $TARGET"
done

