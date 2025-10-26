@echo off
title Otomatik Bilgisayar Kapatma
color 0b

:MENU
cls
echo ==========================================================================================
echo                                 Akıllı Kapanma Zamanlayıcı
echo ==========================================================================================
echo.
echo.
echo  [1] Zamanlı Kapatma Ayarla
echo  [2] Zamanlı Kapatmayı Durdur
echo  [0] Çıkış
echo.
set /p islem=Yapılacak işlem nedir? :

if "%islem%"=="1" goto BASLAT
if "%islem%"=="2" goto IPTAL
if "%islem%"=="0" goto BITIR

echo.
echo ❌ Geçersiz komut girdin! Tekrar dene.
pause
goto MENU


:BASLAT
cls
echo *** KAPANMA ZAMANI AYARLA ***
echo.
set /p hours=Kaç saat sonra bilgisayar kapansın? (Sadece tam sayı) :

echo %hours%| findstr /r "^[0-9][0-9]*$" >nul
if errorlevel 1 (
    echo Geçersiz giriş. Lütfen sadece pozitif tam sayı giriniz.
    pause
    goto MENU
)

if %hours% LEQ 0 (
    echo Geçersiz süre girdiniz. Lütfen sadece pozitif tam sayı giriniz.
    pause
    goto MENU
)
cls
set /a seconds=%hours%*3600
echo.
echo Bilgisayar %hours% saat sonra kapatılacak...
shutdown /s /f /t %seconds%
echo.
call :BASARI "İstersen ana menüden iptal edebilirsin. Programı kapatmakta bir sorun yoktur sayaç devam edecek."
goto MENU


:IPTAL
cls
shutdown /a
if %errorlevel%==0 (
    call :BASARI "Shutdown durduruldu!"
) else (
    echo.
    echo ❌ İptal edilecek zamanlanmış shutdown yok veya iptal başarısız.
    pause
)
goto MENU


:BITIR
echo Program sonlandırılıyor...
timeout /t 2 >nul
exit /b

:BASARI
REM Arg1 = mesaj
REM Renk: yesil (0A = siyah uzerine acik yesil)
color 0A
echo.
echo [OK✅] %~1
echo.
echo Ana menuye donmek icin bir tusa bas...
pause >nul
REM Rengi geri al
color 0b
exit /b
