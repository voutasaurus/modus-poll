echo "running script"

git clone https://bitbucket.org/modus/analysis-nomenclature.git

if [[ $(shasum --strict -a 256 -c project/checksum.txt 2>&1) == *FAIL* ]]
then
	"checksum failed, file updated"
	exit 1
fi
