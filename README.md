CleanExample
│
├── Presentation
│   ├── Coordinators
│   │   └── BookListCoordinator.swift
│   ├── ViewModels
│   │   └── BookListViewModel.swift
│   └── Views
│       └── BookListView.swift
│
├── Domain
│   ├── Entities
│   │   └── Book.swift
│   └── UseCases
│       ├── GetBooksUseCase.swift
│       └── SaveBookUseCase.swift
│
└── Data
    ├── Repositories
    │   └── BookRepository.swift
    │   └── BookRepositoryProtocol.swift
    │
    ├── DataSources
    │   ├── Local
    │   │   ├── CoreDataManager.swift
    │   │   └── BookLocalDataSource.swift
    │   │   └── BookLocalDataSourceProtocol.swift
    │   │
    │   └── Remote
    │       ├── APIService.swift
    │       └── BookRemoteDataSource.swift
    │       └── BookRemoteDataSourceProtocol.swift
    │
    └── Mappers
        └── BookMapper.swift
