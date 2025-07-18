# 🧮 BMI Calculator App (Flutter)

A simple and clean Body Mass Index (BMI) calculator built using Flutter.

## 🚀 Features

- Gender selection (Male / Female)
- Set height with slider
- Set weight and age with + / – buttons
- BMI calculation with result screen
- Responsive and colorful UI

## 📱 Screenshots

<div style="display: flex; gap: 10px; justify-content: center;">
  <img src="https://github.com/user-attachments/assets/e98628ca-b1ff-41e2-b4a6-3828b808158d" alt="Input Screen" width="200"/>
  <img src="https://github.com/user-attachments/assets/62b9faa9-bbf2-4170-9e50-f5b84bdbbb2b" alt="Result Screen" width="200"/>
</div>

## 🛠️ Getting Started

```bash
git clone https://github.com/Moatazahmed156/BMI-Calculator-Flutter.git
cd bmi_calculator_flutter
flutter pub get
flutter run
```

## 🧮 How BMI is Calculated

```dart
double calculateBMI(double height, double weight) {
  return weight / ((height / 100) * (height / 100));
}
```

### BMI Categories

| BMI Range  | Category      |
|------------|---------------|
| < 18.5     | Underweight   |
| 18.5–24.9  | Normal        |
| 25–29.9    | Overweight    |
| 30 or more | Obese         |

## 📂 Folder Structure

```
lib/
├── main.dart
├── views/
│   ├── input_screen.dart
│   └── result_screen.dart
├── services/
│   └── calculate_bmi.dart
```
