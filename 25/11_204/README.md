
# 🔋 Battery SOH & RUL Prediction using Machine Learning Models

## 🔬 Overview
This project aims to predict the **State of Health (SOH)** and **Remaining Useful Life (RUL)** of lithium-ion batteries using deep learning models. It utilizes NASA’s battery datasets and features an interactive web interface built using **Flask** for the frontend and **FastAPI** for the backend. The core of the system consists of multiple deep learning models designed to analyze degradation patterns and forecast battery health.

## 🧠 Core Machine Learning Models

### 🔸 1. MLP (Multi-Layer Perceptron)
- A fully connected feedforward neural network.
- Trained on 5-length historical SOH sequences.
- Serves as the baseline model.

### 🔸 2. LSTM-CNN
- Hybrid model combining Long Short-Term Memory (LSTM) with Convolutional Neural Networks (CNN).
- Captures sequential dependencies and local patterns in battery degradation.

### 🔸 3. Transformer
- Leverages self-attention mechanisms to model global dependencies.
- Provides superior performance on long sequences.

## 📈 Common Features Across Models
- **Input:** 5 previous SOH values.
- **Output:** Predicted SOH and RUL.
- **Evaluation Metrics:** MAE (Mean Absolute Error), RMSE (Root Mean Square Error).

## 📁 Dataset
- **Source:** NASA Prognostics Data Repository  
- **Files:** `B0005.mat`, `B0006.mat`, `B0007.mat`, `B0008.mat`
- **Features:** Capacity, charge cycles, temperature, integrated current, etc.

### 🔹 SOH Calculation
\[
SOH = \left(\frac{C_t}{C_{initial}}\right) \times 100
\]
Where:
- \( C_t \): Current capacity at cycle *t*
- \( C_{initial} \): Initial capacity

## 📂 Project Structure

\`\`\`
project/
├── app.py                  # Flask app for frontend
├── backend/
│   └── app.py              # FastAPI backend for model serving
├── static/
│   └── plots/              # Generated plots
├── templates/
│   └── index.html          # Frontend HTML template
├── models/                 # Transformer and LSTM-CNN implementations
├── utils/                  # Preprocessing, metrics, plotting utilities
├── data/                   # Battery .mat files
├── requirements.txt        # Python dependencies
└── README.md               # Project documentation
\`\`\`

## 🚀 Features

- **Dataset Selection:** Choose from NASA datasets or upload your own \`.mat\` file.
- **Model Selection:** Select from MLP, LSTM-CNN, or Transformer.
- **Visualizations:**
  - Predicted vs Actual SOH plot
  - RUL over cycles
  - SOH heatmap and histogram
  - Cycle-wise prediction table
- **Metrics Displayed:** MAE, RMSE for model evaluation.

## 🔧 How to Run the Project

### 1. Clone the Repository
\`\`\`bash
git clone https://github.com/spkkarri/EE363/tree/main/25/03_209/Code.git
cd sohprediction
\`\`\`

### 2. Install Dependencies
(Optional) Create a virtual environment:
\`\`\`bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
\`\`\`

Install required libraries:
\`\`\`bash
pip install -r requirements.txt
\`\`\`

### 3. Run the frontend and backend 
by python app.py


Visit the app in your browser at [http://127.0.0.1:5000/](http://127.0.0.1:5000/)

## 📈 Results and Metrics

- **Predicted vs Actual SOH**
- **RUL Predictions**
- **SOH Heatmap**
- **Cycle-wise Table**
- **MAE and RMSE metrics**

## 🛠 Technologies Used

| Layer         | Tools / Frameworks                     |
|---------------|-----------------------------------------|
| Frontend      | Flask, HTML/CSS                        |
| Backend       | FastAPI                                |
| ML Models     | PyTorch / TensorFlow (as applicable)   |
| Visualization | Matplotlib, Seaborn                    |
| Data          | NASA Prognostics Data Repository       |

## 📽 video
🎥 Watch the full video https://drive.google.com/file/d/1nBCN-WwMf0GaRWh8786dTDX6URa8MeGb/view?usp=sharing)

## 👨‍💻 Team Information

- **Team No:** 11  
- **Course:** EE363 – Machine Learning for Engineers  
- **Roll Number (Last 3 Digits):** 204

## 📄 License
This project is licensed under the MIT License – see the [LICENSE](./LICENSE) file for details.
Video link:
https://drive.google.com/file/d/1nBCN-WwMf0GaRWh8786dTDX6URa8MeGb/view?usp=sharing
