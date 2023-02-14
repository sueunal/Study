# Study

### Xcode Erorr

##### Xcode에서 갑자기 coudln't open file 이라는 에러메시지를 띄우며 xcode가 강제 종료 되었다..
##### 검색해보니 Xcode 에서 git merge 를 하였는데 파일에

##### project.pbxproj
```
<<<<<<< HEAD
=======
		2CE654AB2987B91C003F5CBB /* myFunction.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = myFunction.swift; sourceTree = "<group>"; };
>>>>>>> Developer
```
##### 내용이 삽입되어있어 
```
<<<<< HEAD
=====
>>>>> Developer
```
##### 이부분을 삭제 해주니 프로젝트가 정상적으로 열린다..
