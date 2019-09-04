@echo off
for %%f in (*.json) do (
    "C:\Program Files\MongoDB\Server\4.2\bin\mongoimport.exe" --host cluster0-shard-00-00-mufxx.mongodb.net:27017 --db slackArchive --type json --collection slackMessages --file %%~nf.json --authenticationDatabase admin --ssl --username ** --password **
)