lib/
├── core/
│   ├── theme/                # App-wide theme, colors, text styles
│   ├── routes/               # AppRoute config (GoRouter or Navigator 2.0)
│   └── utils/                # Global constants, animations, helpers
│
├── shared/                   # Global reusable widgets, services, extensions
│   ├── widgets/              # AppButton, LoadingSpinner, etc.
│   ├── services/             # Logging, local storage, network status
│   └── extensions/           # String extensions, context helpers, etc.
│
├── features/
│   ├── splash/
│   │   ├── presentation/
│   │   │   ├── pages/        # splash_page.dart
│   │   │   ├── widgets/      # LogoWidget, TaglineText, etc.
│   │   │   └── viewmodel/    # splash_viewmodel.dart
│   │   ├── domain/
│   │   │   ├── entities/     # SplashInfo (if needed)
│   │   │   └── usecases/     # DelayNavigation, CheckAuthStatus
│   │   └── data/
│   │       └── repositories/ # AppStateRepositoryImpl (optional)
│
│   ├── home/
│   │   ├── presentation/
│   │   │   ├── pages/        # home_page.dart
│   │   │   ├── widgets/      # CategoryList, PopularPlaceCard, etc.
│   │   │   └── viewmodel/    # home_viewmodel.dart
│   │   ├── domain/
│   │   │   ├── entities/     # Place, Category
│   │   │   └── usecases/     # FetchPopularPlaces, FetchCategories
│   │   └── data/
│   │       ├── models/       # PlaceModel, CategoryModel
│   │       └── repositories/ # PlaceRepositoryImpl
│
│   ├── place/
│   │   ├── presentation/
│   │   │   ├── pages/        # place_details_page.dart
│   │   │   ├── widgets/      # ImageGallery, ReviewList
│   │   │   └── viewmodel/    # place_details_viewmodel.dart
│   │   ├── domain/
│   │   │   ├── entities/     # PlaceDetails
│   │   │   └── usecases/     # LoadPlaceDetails
│   │   └── data/
│   │       ├── models/       # PlaceDetailsModel
│   │       └── repositories/ # PlaceDetailsRepositoryImpl
│
├── main.dart                 # App entry point (calls runApp)
