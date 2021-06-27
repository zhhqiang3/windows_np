@echo off

set PHP_FCGI_MAX_REQUESTS = 1000

echo Starting PHP FastCGI...
RunHiddenConsole D:\Server\php\php-7.2.34-nts-Win32-VC15-x64/php-cgi.exe -b 127.0.0.1:9972 -c D:\Server\php\php-7.2.34-nts-Win32-VC15-x64/php.ini
RunHiddenConsole D:\Server\php\php-5.6.9-nts-Win32-VC11-x64/php-cgi.exe -b 127.0.0.1:9956 -c D:\Server\php\php-5.6.9-nts-Win32-VC11-x64/php.ini
RunHiddenConsole D:\Server\php\php-7.4.13-nts-Win32-vc15-x64/php-cgi.exe -b 127.0.0.1:9974 -c D:\Server\php\php-7.4.13-nts-Win32-vc15-x64/php.ini
RunHiddenConsole D:\Server\php\php-8.0.7-nts-Win32-vs16-x64/php-cgi.exe -b 127.0.0.1:9980 -c D:\Server\php\php-8.0.7-nts-Win32-vs16-x64/php.ini

echo Starting nginx...

D:\Server\nginx-1.19.5/nginx.exe -p D:\Server\nginx-1.19.5

cd D:\Server\nginx-1.19.5/

pause