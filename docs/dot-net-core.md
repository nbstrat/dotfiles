# .NET Core Version Locations 

To determine which dotnet core version you have installed, you can use either of these three methods:

1) Check the version:
```
dotnet --version
```
![dotnet version](/images/ss-dotnet-version.png)


2) Check the file location: 
The dotnet sdk packages are located in `C:\Program Files\dotnet\sdk`


3) Get info for all versions installed:
```
dotnet --info
```
![dotnet info](/images/ss-dotnet-info.png)

Note that .NET Core versions are specific to the Visual Studio installation. In my case, I was using Visual Studio 2017 CE that could not be used with .NET Core 3.x. prompting me to install VS 2019. 

https://dotnet.microsoft.com/download/visual-studio-sdks


https://dotnet.microsoft.com/download/dotnet-core/thank-you/sdk-3.1.101-windows-x64-installer

-- getting started with Blazor
https://docs.microsoft.com/en-us/aspnet/core/blazor/get-started?view=aspnetcore-3.1&tabs=visual-studio