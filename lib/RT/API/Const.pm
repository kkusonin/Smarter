package RT::API::Const;
use strict;
use warnings;
use utf8;
use base qw(Exporter);

our @EXPORT_OK = qw($ERROR_OK $ERROR_FAIL $ERROR_BUSY $ERROR_BAD_REQ $ERROR_BAD_PARAM
                    $ERROR_ACC_NOT_FOUND $ERROR_LOGIN_NOT_FOUND $ERROR_BLOCKING
                    $ERROR_ORDER_NOT_FOUND $ERROR_PACKAGE_ALREADY_EXISTS
                    $ERROR_REQUEST_ALREADY_EXISTS $ERROR_PACKAGE_NOT_EXISTS
                    $ERROR_PACKAGE_EXISTS_EARLIER $ERROR_STB_NOT_SUPPORT_HDARLIER
                    rescode_to_string);

our %EXPORT_TAGS = (all => \@EXPORT_OK);

our $ERROR_OK                       = 0;
our $ERROR_FAIL                     = 1;
our $ERROR_BUSY                     = 2;
our $ERROR_BAD_REQ                  = 3;
our $ERROR_BAD_PARAM                = 4;
our $ERROR_ACC_NOT_FOUND            = 5;
our $ERROR_LOGIN_NOT_FOUND          = 6;
our $ERROR_BLOCKING                 = 7;
our $ERROR_ORDER_NOT_FOUND          = 8;
our $ERROR_PACKAGE_ALREADY_EXISTS   = 9;
our $ERROR_REQUEST_ALREADY_EXISTS   = 10;
our $ERROR_PACKAGE_NOT_EXISTS       = 11;
our $ERROR_PACKAGE_EXISTS_EARLIER   = 12;
our $ERROR_STB_NOT_SUPPORT_HDARLIER = 13;

my %strings = (
  $ERROR_OK                       => 'Запрос выполнен успешно',
  $ERROR_FAIL                     => 'Неклассифицированная ошибка выполнения запроса',
  $ERROR_BUSY                     => 'Система занята',
  $ERROR_BAD_REQ                  => 'Неизвестный вид  запроса',  
  $ERROR_BAD_PARAM                => 'Неверные параметры запроса',
  $ERROR_ACC_NOT_FOUND            => 'Лицевой счет не найден',
  $ERROR_LOGIN_NOT_FOUND          => 'Конверт не найден',
  $ERROR_BLOCKING                 => 'Абонент находится в блокировке.',
  $ERROR_ORDER_NOT_FOUND          => 'Заявка не найдена',
  $ERROR_PACKAGE_ALREADY_EXISTS   => 'Пакет каналов уже подключен',
  $ERROR_REQUEST_ALREADY_EXISTS   => 'Заявка уже существует',
  $ERROR_PACKAGE_NOT_EXISTS       => 'Пакет каналов не подключен',
  $ERROR_PACKAGE_EXISTS_EARLIER   => 'Пакет каналов подключался ранее',
  $ERROR_STB_NOT_SUPPORT_HDARLIER => 'Приставка не поддерживает HD каналы',
);

sub rescode_to_string {
  my $code = shift;

  return $strings{$code} || 'Неизвестная ошибка';
}

1;
