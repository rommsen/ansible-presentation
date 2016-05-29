export XDEBUG_CONFIG="remote_host=192.168.33.1 idekey=PHPSTORM"
export PHP_IDE_CONFIG="serverName=promotion"

alias ipm='cd /var/www/iPM_Promotion'
alias cur='cd /var/www/iPM_Promotion/current'

alias sf_dev='sf_env dev'
alias sf_prod='sf_env prod'
alias sf_test='sf_env test'

alias sf_cc='php app/console cache:clear'
alias sf_purge_cache='sudo rm -rf /var/www/iPM_Promotion/shared/cache/*'

alias sf_migrate='php app/console doctrine:migrations:migrate'
alias sf_schema_drop='php app/console doctrine:schema:drop --force'
alias sf_schema_create='php app/console doctrine:schema:create'

alias sf_diff='php app/console doctrine:migrations:diff'
alias sf_jms_run='php app/console jms-job-queue:run --verbose'
alias sf_dispatch_mails='php app/console ipark:application:dispatch'

alias phpunit="phpunit -c app"
alias specs_run="phpspec run"
alias specs_descr="phpspec descr"

alias behat_default="behat src/Ipark/ApplicationBundle/Behat/Features/Testumgebung/Default.feature -p=dev --tags='@user,@dummy,@mail'"

export PATH="./bin:./app/bin:$PATH"

function sf_env() {
    case $1 in
      dev*|test*|prod*)
        export SYMFONY_ENV=$1
        echo "Alle folgenden Symfony-Commands ausführen mit: --env=$SYMFONY_ENV"
      ;;
      *) echo "bitte dev|test|prod als ersten Parameter eingeben" ;;
    esac
}
function print_symfony_env {
    if [ $(pwd) = "/var/www/iPM_Promotion/current" ]
    then
        echo " (--env=$SYMFONY_ENV)"
    fi
}

