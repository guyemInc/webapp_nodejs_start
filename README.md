# webapp_nodejs_start

Application web Node.js basique avec Express.js.

## Description

Projet de démarrage minimaliste pour une application web utilisant :
- **Backend** : Node.js avec Express.js 5.2.1
- **Frontend** : Fichiers statiques HTML/CSS/JavaScript
- **Port** : 8080

## Installation

```bash
npm install
```

## Démarrage

```bash
node index.js
```

L'application sera accessible sur `http://localhost:8080`

## Fonctionnalités

- Serveur de fichiers statiques
- Page d'accueil avec bouton interactif
- Interface simple et fonctionnelle

## Test

Pour tester le bouton de validation :
1. Démarrez le serveur avec `node index.js`
2. Ouvrez `http://localhost:8080` dans votre navigateur
3. Cliquez sur le bouton "Validation"
4. Une alerte "Bouton cliqué !" devrait apparaître

## Docker

### Construction de l'image

```bash
docker build -t webapp-nodejs .
```

### Lancement du conteneur

```bash
docker run -p 8080:8080 webapp-nodejs
```

### GitHub Actions

Le projet inclut un workflow GitHub Actions pour construire automatiquement l'image Docker et la sauvegarder comme artifact téléchargeable.

## Structure

```
webapp_nodejs_start/
├── index.js              # Point d'entrée du serveur
├── package.json          # Dépendances du projet
├── public/
│   └── index.html        # Page principale
├── Dockerfile            # Configuration Docker
├── .dockerignore         # Fichiers exclus de Docker
└── .github/workflows/    # Configuration CI/CD
```
