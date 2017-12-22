#!/bin/bash

echo "**** Start shell script ****"

mv /home

mkdir "$GIT_REPO_DIRECTORY"
git clone "$GIT_REPO_URL" "$GIT_REPO_DIRECTORY"
# Put your password

cd "$GIT_REPO_DIRECTORY"
echo "** repository pull **"

# Checkout branch
git checkout "$GIT_BRANCH"
echo "** checkout **"

# GRADLE BUILD
# ./gradlew assemble

# RUN fastlane.
# 인자로 넘기기 귀찮다면 그냥 밑에 fastlane beta 식으로, 태스크를 다 추가하면 됨.
fastlane "$FASTLANE_LANE"
# fastlane beta

echo "** execute fastlane task **"
# END
echo "**** END SCRIPT ****"
