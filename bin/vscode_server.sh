COMMIT_ID=$1
# tar_name="vscode-server-linux-x64.tar.gz"
# tar_commit_name="vscode-${COMMIT_ID}.gz"
# echo $COMMIT_ID

wget -O vscode-server-linux-x64.tar.gz https://update.code.visualstudio.com/commit:${COMMIT_ID}/server-linux-x64/stable
# mv ${tar_name} ${tar_commit_name}
# scp ${tar_commit_name} chx@10.1.8.83:/home/chx
