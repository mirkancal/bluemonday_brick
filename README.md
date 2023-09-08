
## How to use

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

bricks:
  bluemonday_brick:
    git:
      url: https://github.com/mirkancal/bluemonday_brick.git

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