rem Batch permettant la génération du projet


rem =========================================
rem 			Création du projet
rem =========================================
@echo off
set "project_name=%WORKSPACE%\projets\projet_jenkins.dhpt"
@echo xwin-projet        2.0 						>  "%project_name%"
@echo [general] 									>> "%project_name%"
@echo nom="jenkins" 								>> "%project_name%"
@echo progexec="divalto.dhop" 						>> "%project_name%"
@echo date="20150609160215070899" 					>> "%project_name%"
@echo util="ROOT"									>> "%project_name%"
@echo [profildefaut] 								>> "%project_name%"
@echo [profil] 										>> "%project_name%"
@echo nom="jenkins" 								>> "%project_name%"
@echo repobjet="%WORKSPACE%\objets"					>> "%project_name%"
@echo implicites="%JOB_NAME%jk.txt" 				>> "%project_name%"
@echo [sousprojets] 								>> "%project_name%"
@echo fic="jenkins.dhps"," " 						>> "%project_name%"
@echo [projetsfusion]	 							>> "%project_name%"
@echo [fabricationmere] 							>> "%project_name%"
@echo [autres] 										>> "%project_name%"

rem =========================================
rem 		Création du sous-projet
rem =========================================
set "subproject_name=%WORKSPACE%\projets\jenkins.dhps"
@echo xwin-sprojet       2.0						>  "%subproject_name%"
@echo [general]										>  "%subproject_name%"
@echo date="20150702183409311499"					>  "%subproject_name%"
@echo util="ROOT"									>  "%subproject_name%"
@echo typetransport=3								>  "%subproject_name%"
@echo [communs]										>  "%subproject_name%"
@echo [fichiers]									>  "%subproject_name%"

rem Ajout des fichiers dans le projet (sources std gipec + sources projet)
for %%f in (..\sources\*.dhsp) do echo %%f
for %%f in (..\sources_std_gipec\*.dhsp) do echo %%f

@echo [autres]										>  "%subproject_name%"