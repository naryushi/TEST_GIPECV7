rem Batch permettant la génération du projet


rem Création du projet
@echo off
set "project_name=%WORKSPACE%\projets\projet_jenkins.dhpt"
echo %project_name% > c:\DEV\test.txt
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