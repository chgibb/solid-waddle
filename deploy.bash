kill $(ps aux | grep '[b]ash [d]eploy.[b]ash' | awk '{print $2}')
kill $(ps aux | grep '[me]eteor' | awk '{print $2}')
kill $(ps aux | grep '[me]eteor' | awk '{print $2}')
rm -rf solid-waddle
git clone https://github.com/chgibb/solid-waddle
cd solid-waddle
cd src

while true
do
    meteor
done

