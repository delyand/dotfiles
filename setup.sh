for file in .bashrc .vimrc .git-completion.bash .ideavimrc .tmux.conf
do
  LINK_FILE=../$file
  FILE=dotfiles/$file

  echo Linking $FILE to $LINK_FILE
  ln -s $FILE $LINK_FILE
done

echo Copying .bash_profile to ../.bash_profile
cp .bash_profile ../.bash_profile
