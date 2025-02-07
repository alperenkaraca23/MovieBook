```markdown
# MovieBook  

**MovieBook** is a simple yet powerful movie catalog application that fetches movie data from the **Open Movie Database (OMDb) API** and presents it to users in an elegant SwiftUI interface. This project follows the **MVVM (Model-View-ViewModel) architecture** and demonstrates how to integrate external APIs, manage network calls, and efficiently handle data flow.  

## Features  

- **Movie Search**: Fetch and display movies using the OMDb API.  
- **SwiftUI Interface**: A fully responsive and modern UI built with SwiftUI.  
- **MVVM Architecture**: A clean and scalable structure separating concerns for better maintainability.  
- **Asynchronous Networking**: Fetches movie data efficiently using async network calls.  

## Technologies Used  

- **Swift**: Primary programming language.  
- **SwiftUI**: Declarative UI framework for modern iOS development.  
- **MVVM Pattern**: Implements Model, View, and ViewModel for clean architecture.  
- **Networking**: Uses URLSession to fetch movie data from the OMDb API.  

## How It Works  

1. **Model & WebService Setup**  
   - Created a **Movie model** to store movie data.  
   - Developed a **WebService** class that handles API requests to fetch movie details.  

2. **ViewModel Implementation**  
   - Designed the **MovieViewModel** to manage API calls and bind data to the UI.  
   - Ensured **data binding** so that UI updates automatically when new data is available.  

3. **View Creation with SwiftUI**  
   - Designed a **search bar and movie list** to display fetched movies dynamically.  
   - Implemented a **detailed movie view** where users can see movie descriptions, release dates, and other metadata.  

4. **Testing & Refinements**  
   - Verified API integration and UI responsiveness.  
   - Ensured smooth user experience with proper state management.  

## Folder Structure  


MovieBook/
├── Models/
│   ├── MovieModel.swift               # Defines the movie data structure  
│   ├── MovieDetailModel.swift         # Defines the movie detail data structure  
├── Services/
│   ├── Downloader.swift                # Handles API requests  
│   ├── ImageDownloader.swift           # Handles Images requests  
├── ViewModels/
│   ├── MovieListVM.swift        # Manages data flow between Model and View  
│   ├── MovieDetailVM.swift      # Manages data flow between Detail Model and Detail View 
├── Views/
│   ├── MovieListView.swift       # Displays list of movies  
│   ├── MovieDetailView.swift     # Shows detailed movie information  
```  

## Video Demo  



https://github.com/user-attachments/assets/e36076af-1056-47f3-9b05-b1c6e45f2547


```
## Usage  

1. **Search Movies**: Enter a movie title in the search bar to fetch data.  
2. **View Details**: Tap on a movie to see its details.
```
