#!/bin/bash
cd ../

echo "Starting client.clrtech on port 80"
cd fe/
mintty --hold -e bash -c "npm start"
cd ..

echo Started dotnet service on port 5001
cd be/dotnet/MinhCoach.Api
mintty --hold -e bash -c "dotnet run"
cd ../../..

echo Started nestjs service on port 5002
ls
cd be/nestjs
mintty --hold -e bash -c "npm start"
cd ../..