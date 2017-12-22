# android-git-fastlane-standalone

Docker image for android-fastlane build environment 
build apks(flavors) -> android studio fabric plugin -> select apk -> select app flavor   
쓸데 없이 긴 스텝.

CI 는 따로 설정하기 귀찮은 상황. 호스트 PC 는 건드리고 싶지 않다. ->
Fastlane 을 사용하자.  
윈도우는 ruby 잘 앙되잖아 ?

### Prerequisites

- Installed [Docker](https://docker.com)
- Docker machine 의 성능을 미리 올려두자. (안드로이드 프로젝트를 위해 -cpus 2, -m 4g 정도로. 자세한 설명은 생략한다.)
- 라인피드는 미리 LF로 바꿔두자.

### How to use
1. git clone repository
1. docker build -t {image name}:{tag} (원하는)
1. 이미지가 생성이 되면, Dockerfile 을 수정하지 않는 한 안봐도 된다.
1. docker run -e GIT_REPO_URL={git repository URL(HTTP or HTTPS)} -e GIT_REPO_DIRECTORY={app module directory} -e FABRIC_TASK={target fastlane lane name} -e GIT_BRANCH={target branch} -it -m=4g {imagename}:{tag}
