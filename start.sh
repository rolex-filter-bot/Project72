if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rolex-filter-bot/Project72.git /ROLEX_FILTER_BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ROLEX_FILTER_BOT
fi
cd /ROLEX_FILTER_BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
