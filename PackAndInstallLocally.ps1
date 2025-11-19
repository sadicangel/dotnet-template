dotnet new uninstall SadicAngel.Templates
dotnet pack -o pckgs
dotnet new install ./pckgs/*.nupkg
