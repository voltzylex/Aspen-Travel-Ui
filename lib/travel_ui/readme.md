lib/
├── core/
│   ├── theme/                # App-wide colors, typography
│   ├── routes/               # Routing setup
│   └── utils/                # Helpers, constants, animations
│
├── features/
│   └── splash/               # Splash screen feature
│       ├── presentation/
│       │   ├── pages/        # splash_page.dart (main screen UI)
│       │   ├── widgets/      # LogoWidget, LoaderWidget, etc.
│       │   └── viewmodel/    # splash_viewmodel.dart (state, navigation logic)
│       ├── domain/           # (Optional for splash, but good for practice)
│       │   ├── usecases/     # CheckIfLoggedIn, DelayNavigation
│       │   └── entities/     # SplashInfo (if any)
│       └── data/             # (Optional for now)
│           └── repositories/ # e.g., AppStateRepositoryImpl
│
└── main.dart                 # Entry point
