# 📦 SadicAngel .NET Template Pack

A personal collection of opinionated `.NET` templates that I use for new
backend/service repositories.\
Packaged for my own GitHub Package Registry, but public-ready and easy
to extend.

This pack currently includes:

### **`sa-repo`**

A full repository skeleton for .NET projects, including:

-   `Directory.Build.props` & `Directory.Packages.props`
-   `.editorconfig`, `.gitattributes`, `.gitignore`
-   `.github/workflows` (CI, formatting, etc.)
-   Source & test folder structure
-   My default analyzer settings and conventions

This template is intended to be used **after creating a new empty GitHub
repository** (so that GitHub can auto-generate the README + LICENSE).

------------------------------------------------------------------------

## 🚀 Installing the template

First, authenticate to the GitHub Package Registry:

``` bash
dotnet nuget add source   --name sadicangel   --username <your-github-username>   --password <your-github-token>   --store-password-in-clear-text   "https://nuget.pkg.github.com/sadicangel/index.json"
```

Then install the templates:

``` bash
dotnet new install SadicAngel.Templates
```

List available templates:

``` bash
dotnet new list sa
```

------------------------------------------------------------------------

## 🧪 Using the template (`sa-repo`)

Create a fresh GitHub repo *first* with README + LICENSE.\
Then inside the cloned folder:

``` bash
dotnet new sa-repo -n MyService
```

This generates:

    MyService/
      .editorconfig
      .gitattributes
      .gitignore
      Directory.Build.props
      Directory.Packages.props
      SpellingExclusions.dic
      .github/
        workflows/
          build.yml
      src/
        MyService/
      tests/
        MyService.Tests/

Your GitHub-generated README and LICENSE are **kept as-is**, and
everything from the template merges on top.

------------------------------------------------------------------------

## 📁 Template structure

This repository follows the standard .NET template pack layout:

    dotnet-template/
      README.md                <-- for the template project
      LICENSE
      Sa.TemplatePack.csproj  <-- the template NuGet pack
      templates/
        sa-repo/
          .template.config/
            template.json
          content/
            ... all files copied to new repos ...

Dotfiles such as `.editorconfig` and `.gitignore` are included using:

-   `<NoDefaultExcludes>true</NoDefaultExcludes>` **or**
-   `rename` modifiers in `template.json`

------------------------------------------------------------------------

## 🛠 Editing or extending the templates

To modify the template:

1.  Edit files under `templates/sa-repo/content/`

2.  Update `template.json` if you add symbols or renames

3.  Pack it:

    ``` bash
    dotnet pack -c Release
    ```

4.  Publish to GitHub Packages:

    ``` bash
    dotnet nuget push      bin/Release/SadicAngel.Templates.*.nupkg      --source sadicangel
    ```

After updating, reinstall:

``` bash
dotnet new uninstall SadicAngel.Templates
dotnet new install <path-or-package>
```

------------------------------------------------------------------------

## 🧩 Template parameters (symbols)

Currently supported:

  Symbol   Description                             Default
  -------- --------------------------------------- ------------------
  `name`   Root name for solution & main project   Repo folder name

(Expand this section as you add more symbols.)

------------------------------------------------------------------------

## 📜 License

This project's template code is licensed under the **MIT License**.

------------------------------------------------------------------------

## ❤️ Feedback / Improvements

This is a personal template pack, but I'm happy to evolve it over time.\
If you notice something missing in template generation or `.NET`
ecosystem tooling, just open an issue or tweak the template and send a
PR.
