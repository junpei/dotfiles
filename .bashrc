#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

#export EC2_HOME=$HOME/.ec2/ec2-api-tools
#export EC2_PRIVATE_KEY=$HOME/.ec2/pk-XG6UDFE2CSYU33OSRXZQ253QZ3SRVBTM.pem
#export EC2_CERT=$HOME/.ec2/cert-XG6UDFE2CSYU33OSRXZQ253QZ3SRVBTM.pem
#export EC2_URL=https://ec2.ap-northeast-1.amazonaws.com
#export EC2_REGION=ap-northeast-1

#export AWSAccessKeyId=AKIAIWYBEGL2MJ3RDEBA
#export AWSSecretKey=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
# 021357514071

#export AWS_RDS_HOME=$HOME/.ec2/RDSCli
#export AWS_ELB_HOME=$HOME/.ec2/ElasticLoadBalancing
#export AWS_IAM_HOME=$HOME/.ec2/IAMCli
#export AWS_CLOUDWATCH_HOME=$HOME/.ec2/CloudWatch
#export AWS_AUTO_SCALING_HOME=$HOME/.ec2/AutoScaling
#export AWS_CREDENTIAL_FILE=$HOME/.ec2/aws_credential.txt

#export NODE_PATH=/opt/local/lib/node_modules
export PATH="$HOME/bin:$HOME/.ec2/bin:$HOME/.rbenv/shims:$PATH"
export PATH="/Applications/MacVim.app/Contents/bin/:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"

# git settings
source $(brew --prefix git)/etc/bash_completion.d/git-completion.bash
source $(brew --prefix git)/etc/bash_completion.d/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

#export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
#export PS1='\[\ek\e\\\][\u@\h \w]\$ '

export HISTSIZE=1000000
export HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '
