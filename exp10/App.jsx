import { useState } from "react";
import "./App.css";

function App() {
  const [color, setColor] = useState("white");

  return (
    <div className="container" style={{ backgroundColor: color }}>
      <h1 style={{ color: color === "blue" ? "white" : "black" }}>
        {color === "white"
          ? "Select a Color"
          : `You clicked on ${color.charAt(0).toUpperCase() + color.slice(1)} Button.`}
      </h1>

      <div className="buttons">
        <button className="red" onClick={() => setColor("red")}>
          Red
        </button>

        <button className="blue" onClick={() => setColor("blue")}>
          Blue
        </button>

        <button className="green" onClick={() => setColor("green")}>
          Green
        </button>

        <button className="yellow" onClick={() => setColor("yellow")}>
          Yellow
        </button>
      </div>
    </div>
  );
}

export default App;