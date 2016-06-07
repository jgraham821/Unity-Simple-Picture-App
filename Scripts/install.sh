#! /bin/sh

# Example install script for Unity3D project. See the entire example: https://github.com/JonathanPorta/ci-build

# This link changes from time to time. I haven't found a reliable hosted installer package for doing regular
# installs like this. You will probably need to grab a current link from: http://unity3d.com/get-unity/download/archive
echo 'Downloading from http://download.unity3d.com/download_unity/44735ea161b3/MacEditorInstaller/Unity-5.2.1f1.pkg: '
curl -o Unity.pkg http://download.unity3d.com/download_unity/44735ea161b3/MacEditorInstaller/Unity-5.2.1f1.pkg

echo 'Validating download'
ls -alt

echo 'Installing Unity.pkg'
sudo installer -pkg Unity.pkg -target / 
