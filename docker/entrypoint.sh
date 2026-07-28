if [ -z "${BASIC_USER}" ] || [ -z "${BASIC_PASS}" ] || [ -z "${TG_Chat_ID}" ] || [ -z "${TG_Bot_Token}" ]; then
  echo 缺少必要的参数
  exit 1
fi

wrangler pages dev ./ --kv "img_url" --ip 0.0.0.0 --port 8080 --persist-to ./data \
  --binding "BASIC_USER=$BASIC_USER" \
  --binding "BASIC_PASS=$BASIC_PASS" \
  --binding "TG_Chat_ID=$TG_Chat_ID" \
  --binding "TG_Bot_Token=$TG_Bot_Token" \
  ${ModerateContentApiKey:+--binding "ModerateContentApiKey=$ModerateContentApiKey"} \
  ${WhiteList_Mode:+--binding "WhiteList_Mode=$WhiteList_Mode"}
