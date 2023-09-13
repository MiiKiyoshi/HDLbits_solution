# 파일 추가
git add .

# 현재 날짜와 시간을 커밋 메시지로 설정
$commitMessage = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m $commitMessage

# 원격 저장소에 푸시
git push
