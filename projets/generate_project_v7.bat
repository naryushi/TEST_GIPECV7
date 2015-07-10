rem Batch permettant la génération du projet


rem =========================================
rem 			Création du projet
rem =========================================
@echo off
set "project_name=%WORKSPACE%\projets\projet_jenkins.dhpt"
>"%project_name%" (
	@echo xwin-projet        2.0
	@echo [general] 
	@echo nom="jenkins"
	@echo progexec="divalto.dhop"
	@echo date="20150609160215070899"
	@echo util="ROOT"
	@echo [profildefaut]
	@echo [profil]
	@echo nom="jenkins"
	@echo repobjet="%WORKSPACE%\objets"
	@echo implicites="%JOB_NAME%jk.txt"
	@echo [sousprojets]
	@echo fic="jenkins.dhps"," "
	@echo [projetsfusion]
	@echo [fabricationmere]
	@echo [autres]
)

rem =========================================
rem 		Création du sous-projet
rem =========================================
set "subproject_name=%WORKSPACE%\projets\jenkins.dhps"
>"%subproject_name%"(
	@echo xwin-sprojet       2.0
	@echo [general]
	@echo date="20150702183409311499"
	@echo util="ROOT"
	@echo typetransport=3
	@echo [communs]
	@echo [fichiers]	
	rem Ajout des fichiers dans le projet (sources std gipec + sources projet)
	for %%f in (..\sources\*.dhsp) do echo %%f
	for %%f in (..\sources_std_gipec\*.dhsp) do echo %%f
	@echo [autres]
)

