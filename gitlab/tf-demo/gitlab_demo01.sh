#!/urs/bin/env bash

echo "========================================================================="
echo "создаем локальный проект в ../gitlab/wp-project"
echo "========================================================================="
git init ../gitlab/wp-project
echo "========================================================================="
echo "конфигурируем проект"
echo "========================================================================="
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project remote add origin https://root:Net0logy%40@gitlab.rootnoir.ru/root/wp-project.git
echo "========================================================================="
echo "копируем файлы и делаем первый пуш"
echo "========================================================================="
cp -rT ../gitlab/resources/01-init ../gitlab/wp-project
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project add .
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project commit -m 'init'
export GIT_SSL_NO_VERIFY=1
git --git-dir=../gitlab/wp-project/.git --work-tree=../gitlab/wp-project push -u origin master
echo "========================================================================="
echo "все готово. ждем 100 секунд перед вторым коммитом, который запустит CI/CD"
echo "а пока, можно посетить https://www.rootnoir.ru и запомнить кол-во постов)"
echo "========================================================================="
sleep 100
