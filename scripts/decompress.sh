##############################################################
#  Dan Ryan
#
#  Stanford University - CS230 Deep Learning
#
#  06/05/2020
#
#  dryan2@stanford.edu
#  dan_ryan21@hotmail.com
#  
##############################################################

##############################################################
#  Check Inputs
##############################################################

if [ $# -ne 2 ]; then
    echo -e "\n*** Error.  Expected 2 inputs to decompress.sh ***\n"
    exit 1
fi

##############################################################
#  Assign Inputs
##############################################################

data_set=$1
data_local=$2

tar_file=$data_set.tar.gz

##############################################################
#  Decompress Data
##############################################################

if ! tar -C $data_local -xvzf $data_local/$tar_file; then
    echo -e "\n*** Error. Un-tarring archive $tar_file failed ***\n"
    exit 1
fi

echo -e "\n*** Successfully un-tarred archive $tar_file ***\n"
