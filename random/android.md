# Mobile Travel Application Report

## 1. Introduction
This mobile travel application enables users to explore a variety of destinations, book tours, and manage their bookings conveniently. The app provides:
- **Destination Discovery:** Users can browse a list of destinations, each with images, descriptions, and ratings.
- **Tour Booking:** Users can book the tour for each destination.
- **Booking Management:** Users can manage their bookings by canceling them.

These features combine to offer a streamlined user experience for travel planning.

## 2. Architecture
The application uses the **Model-View-ViewModel (MVVM)** architecture:
- **Model:** Manages core business logic and interacts with Firebase Firestore to retrieve and save data.
- **View:** Represents the user interface (UI) components that display destinations and bookings, handling user inputs and interactions.
- **ViewModel:** Acts as an intermediary between the Model and View, allowing data to be transformed and used in the View without direct access to the Model.

**Firebase Firestore** is integrated as the primary database, providing real-time synchronization across devices, cloud-based data storage, and automatic scaling.

## 3. Database Design
The database is structured into three main collections in Firebase Firestore:

- **Users:** Stores user profile information such as user ID, name, email, and references to their bookings.
- **Destinations:** Contains information for each destination, including destination ID, name, description, images.
- **Bookings:** Maintains details of user bookings, including booking ID, user ID, destination ID.

Data relationships are managed using document references, optimizing data retrieval and storage efficiency.

## 4. Challenges & Future Improvements

### Challenges
- **Data Consistency:** Ensuring all devices receive real-time updates without data conflicts.
- **Performance Optimization:** Loading data efficiently to prevent delays, especially for image-heavy destination listings.

### Future Improvements
- **Improve Tour booking:** Implement detail tour booking that let user choose date and time, change tour and see all tour in a destination.
- **Better map integration:** Let user see exactly where the place is and how it looks like.
- **User Reviews:** Implement a review system to enable users to rate and review destinations.
- **Multi-language Support:** Expand language options to make the app accessible to an international audience.
