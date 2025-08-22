# 📤 Инструкция по загрузке проекта на GitHub

## 🆕 Создание нового репозитория на GitHub

### Шаг 1: Создайте репозиторий на GitHub

1. Перейдите на [github.com](https://github.com) и войдите в аккаунт
2. Нажмите **"+"** в правом верхнем углу → **"New repository"**
3. Заполните форму:
   - **Repository name:** `neuro-event` или любое другое название
   - **Description:** `AI Video Generation Platform with React & FastAPI`
   - **Visibility:** Public (или Private если хотите)
   - **✅ Add a README file** - снять галочку (у нас уже есть README)
   - **✅ Add .gitignore** - снять галочку (у нас уже есть .gitignore)
   - **✅ Choose a license** - можете выбрать MIT

4. Нажмите **"Create repository"**

### Шаг 2: Подключите локальный репозиторий к GitHub

После создания репозитория, GitHub покажет вам инструкции. Скопируйте URL репозитория (например: `https://github.com/your-username/neuro-event.git`)

Теперь выполните в терминале:

```bash
# Добавьте remote origin
git remote add origin https://github.com/your-username/neuro-event.git

# Отправьте код на GitHub
git push -u origin main
```

## 🔐 Настройка доступа (если используется private репозиторий)

Если ваш репозиторий приватный, убедитесь что:

1. У вас есть доступ к репозиторию
2. Вы используете правильные credentials для push

### Использование Personal Access Token

Если у вас включена 2FA, используйте Personal Access Token:

1. Перейдите в **Settings** → **Developer settings** → **Personal access tokens**
2. Создайте новый токен с правами `repo`
3. Используйте токен вместо пароля при push:

```bash
git push -u origin main
# Когда запросит пароль, введите Personal Access Token
```

## 📝 Дополнительные файлы для добавления (опционально)

Если вы хотите добавить больше файлов в репозиторий, используйте:

```bash
# Добавить файлы из timeweb-deploy (кроме тяжелых файлов)
git add timeweb-deploy/README.md timeweb-deploy/requirements.txt timeweb-deploy/nginx.conf

# Добавить документацию
git add timeweb-deploy/DEPLOY-INSTRUCTIONS.md

# Добавить примеры промптов
git add promts/

# Commit изменений
git commit -m "Add deployment files and documentation"

# Push на GitHub
git push
```

## 🚫 Файлы которые НЕ нужно добавлять в GitHub

Эти файлы уже исключены в `.gitignore`, но убедитесь что они не добавлены:

- ❌ `timeweb-deploy/public/` (слишком большой, генерируется автоматически)
- ❌ `images/generated_*.jpg` (автоматически генерируемые)
- ❌ `*.mp3` (большие аудио файлы)
- ❌ `.env` (чувствительные данные)
- ❌ `*.log` (файлы логов)
- ❌ `node_modules/` (зависимости устанавливаются через npm install)

## 🏷️ Тэги и релизы

После успешного push, создайте релиз:

```bash
# Создать тэг
git tag v1.0.0
git push origin v1.0.0

# Или через GitHub интерфейс:
# 1. Перейдите в репозиторий
# 2. Нажмите "Releases" → "Create a new release"
# 3. Выберите тэг v1.0.0
# 4. Добавьте описание релиза
```

## 📊 Проверка успешности загрузки

1. Перейдите в ваш репозиторий на GitHub
2. Убедитесь что все файлы загружены:
   - ✅ `.gitignore`
   - ✅ `README.md`
   - ✅ `env-example.txt`
   - ✅ `timeweb-deploy/` (основные файлы)

3. Проверьте что тяжелые файлы не загружены:
   - ❌ Нет папки `images/` с большими файлами
   - ❌ Нет `.env` файла
   - ❌ Нет `node_modules/`

## 🎯 Что дальше?

После успешной загрузки на GitHub:

1. **Поделитесь репозиторием** - дайте ссылку другим разработчикам
2. **Создайте documentation** - добавьте wiki или подробные инструкции
3. **Настройте CI/CD** - можно добавить GitHub Actions для автоматического тестирования
4. **Привлекайте контрибьюторов** - добавьте contributing guidelines

## 🔗 Полезные ссылки

- [GitHub Guides](https://guides.github.com/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Creating a repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository)
- [Adding locally hosted code to GitHub](https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github)

---

**🎉 Репозиторий успешно загружен на GitHub!**