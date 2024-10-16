# Todo List Flutter Project

This is a simple **Todo List** app built with **Flutter** and **Firebase**. Users can add from native or webview, and delete tasks, with Firebase Firestore storing the data in real-time.

## Features

- Add, delete tasks
- Real-time sync with Firebase Firestore

## Monorepo Structure

This project uses a **monorepo** approach, where the entire codebase (frontend, backend, shared utilities) is managed in one repository. This allows for easier code sharing and dependency management.

## Firebase Setup

1. Create a Firebase project in the [Firebase Console](https://firebase.google.com/).
2. Enable Firestore and download the `google-services.json` file.
3. Add `google-services.json` to the `android/app` directory.

## Getting Started

1. Clone the repo:

   ```bash
   git clone https://github.com/yourusername/todo-list-flutter.git
