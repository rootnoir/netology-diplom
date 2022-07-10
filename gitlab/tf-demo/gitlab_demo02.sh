#!/urs/bin/env bash

echo "============================================================================="
echo "обновляем локальный проект в ../gitlab/wp-project"
echo "============================================================================="
cp ../gitlab/resources/02-update/* ../gitlab/wp-project/

echo "============================================================================="
echo "коммитим изменения, добавляем tag и пушим в репозиторий"
echo "============================================================================="
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project add .
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project commit -m 'update wordpress'
export GIT_SSL_NO_VERIFY=1
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project tag -a v1.0 -m 'version 1.0'
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project push
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project push --tags
echo "============================================================================="
echo "ждем 20 сек для работы gitlab-runner'a"
echo "============================================================================="
sleep 20
echo "============================================================================="
echo "все должно быть готово. можно проверять изменения на https://www.rootnoir.ru"
echo "============================================================================="
