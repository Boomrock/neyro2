#!/bin/bash

echo "🔍 Проверка состояния сервера Neuro Event..."
echo "==========================================="

# Проверка порта 8000
echo "1. Проверка порта 8000:"
netstat -tlnp | grep :8000 || echo "❌ Порт 8000 не слушает"

# Проверка процессов uvicorn
echo "2. Проверка процессов uvicorn:"
ps aux | grep uvicorn | grep -v grep || echo "❌ uvicorn процесс не найден"

# Проверка nginx
echo "3. Проверка nginx:"
systemctl is-active nginx && echo "✅ nginx работает" || echo "❌ nginx не работает"

# Проверка API эндпоинтов
echo "4. Проверка API эндпоинтов:"
curl -s http://localhost:8000/docs > /dev/null && echo "✅ FastAPI docs доступны" || echo "❌ FastAPI docs недоступны"

curl -s -X OPTIONS http://localhost:8000/generate_dalle > /dev/null && echo "✅ /generate_dalle OPTIONS работает" || echo "❌ /generate_dalle OPTIONS не работает"

# Проверка nginx конфигурации
echo "5. Проверка nginx конфигурации:"
nginx -t && echo "✅ nginx конфигурация валидна" || echo "❌ nginx конфигурация содержит ошибки"

echo "==========================================="
echo "Диагностика завершена"