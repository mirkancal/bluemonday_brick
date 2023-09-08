
## ⚠️⚠️ STILL IN DEVELOPMENT ⚠️⚠️

## 🌟 Introduction

Having built Flutter apps for a significant time, I've realized the initial setup for new projects can be quite repetitive. Remembering the time when I hadn't published any apps under my name until 2023, and now having a few under my belt, I felt the need for a streamlined process. This starter kit is a culmination of those experiences, aiming to simplify the setup for common features and services.

## 🚀 Features

### 1. **Firebase Integration**
   - **Authentication**: Set up Firebase Auth with related blocs, just like how I always wanted a seamless guest login at the last page of onboarding (Anonymous sign-in in Firebase auth).

### 2. **In-App Reviews**
   - A feature I felt was crucial, especially after a user makes a successful purchase. It's a gentle nudge for them to leave a review.

### 3. **RevenueCat Integration**
   - Display offers from RevenueCat. I've seen some apps always showing the trial option even when you're not eligible. With this kit, only eligible users will see the trial, avoiding the disappointment of finding out you don't have a free trial on the native payment sheet.
   - Restore purchases with ease, using a dedicated purchase service and bloc for common operations.

### 4. **Paywall & Offers**
   - A simple paywall page setup, along with pages for discounted and one-time offers.

### 5. **Version Management**
   - Using Remote Config to manage app version numbers was something I always did. Now, you can easily let users know when they launch the app or even force them to update if necessary.

### 6. **Analytics & Crashlytics**
   - Integrated tools for tracking user behavior and handling app crashes, essentials for any app I built.

### 7. **Notifications**
   - A straightforward setup to manage app notifications.

### 8. **Go Router**
   - Efficiently manage app navigation. For instance, redirecting users based on whether they've seen the onboarding, completed a purchase, or are already logged in.

### 9. **Feature Usage Restrictions**
   - Implement local counters to track feature usage. For example, in one of my apps, non-premium users could analyze only 3 dreams a week, while premium users could engage in 100 chats a day. With Remote Config, setting and resetting these limits is a breeze.

## 📈 Future Plans

I'm on a journey to enhance this starter kit continuously. If you've walked a path similar to mine and have suggestions or encounter any issues, please feel free to contribute or raise them in the issues section.


## 🛠️ How to use

### Installation

First, you need to install the Mason CLI. You can do this by activating it from pub.dev:

```bash
dart pub global activate mason_cli
```

### Initialization

Once mason_cli is installed, you can initialize mason in the current directory. This will generate a mason.yaml and allow mason to work with bricks scoped locally within the workspace:

```bash
mason init
```

### Installing Bricks

Now, you can install bricks. For example, to install the "hello" brick, uncomment the "hello" brick (hello: 0.1.0+1) in your mason.yaml:

```yaml
bricks:
  bluemonday_brick:
    git:
      url: https://github.com/mirkancal/bluemonday_brick.git
```

Then, use the get command to install all bricks defined in the nearest parent mason.yaml:

```bash
mason get
```

### Using the Brick

To use the brick, you can use the mason make command followed by the name of the brick. For example:

```bash
mason make bluemonday_brick
```

## Tree 🌲

```markdown
.
├── README.md
├── analysis_options.yaml
├── android
├── build
├── ios
├── l10n.yaml
├── lib
│   ├── app
│   │   ├── app.dart
│   │   ├── utils
│   │   └── view
│   ├── auth
│   │   ├── bloc
│   │   ├── models
│   │   └── repository
│   ├── bootstrap.dart
│   ├── env
│   ├── firebase
│   ├── home
│   ├── injectable.config.dart
│   ├── injectable.dart
│   ├── l10n
│   ├── login
│   ├── main_development.dart
│   ├── main_production.dart
│   ├── main_staging.dart
│   ├── onboarding
│   ├── router
│   └── theme
├── project_structure.txt
└── prompts
    ├── commentor.md
    └── instructor.md
└── pubspec.yaml
```