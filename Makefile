# --------------------------------------------
# dockerのコンテナ関連コマンド
# --------------------------------------------

# dockerコンテナのビルド
build:
	docker build . -t build_web_application
# dockerコンテナの立ち上げ
run:
	docker run -d -p 9999:9999 -v ${PWD}/:/go/src/github.com/gtongy/build-web-application/ --name build_web_application -ti build_web_application
# dockerコンテナのbashで仮想ターミナルの起動
exec:
	docker exec -it build_web_application bash
# dockerコンテナの停止
stop:
	docker stop build_web_application
# dockerコンテナの削除
rm:
	docker rm build_web_application
