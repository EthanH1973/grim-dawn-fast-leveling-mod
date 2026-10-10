"use client";

import { useMemo, useState } from "react";

const masteries = [
  { id: "01", name: "Soldier", color: "#b14d33" },
  { id: "02", name: "Demolitionist", color: "#d77c2c" },
  { id: "03", name: "Occultist", color: "#6f4d8f" },
  { id: "04", name: "Nightblade", color: "#377d91" },
  { id: "05", name: "Arcanist", color: "#466cc0" },
  { id: "06", name: "Shaman", color: "#70884b" },
  { id: "07", name: "Inquisitor", color: "#b58a3f" },
  { id: "08", name: "Necromancer", color: "#4e7163" },
  { id: "09", name: "Oathkeeper", color: "#a65d3f" },
  { id: "10", name: "Berserker", color: "#8f3842" },
] as const;

type Mastery = (typeof masteries)[number];

export default function Home() {
  const [rotation, setRotation] = useState(0);
  const [spinning, setSpinning] = useState(false);
  const [result, setResult] = useState<[Mastery, Mastery] | null>(null);
  const [history, setHistory] = useState<Array<[Mastery, Mastery]>>([]);

  const wheel = useMemo(
    () =>
      `conic-gradient(from -18deg, ${masteries
        .map((m, i) => `${m.color} ${i * 10}% ${(i + 1) * 10}%`)
        .join(", ")})`,
    [],
  );

  function spin() {
    if (spinning) return;
    const firstIndex = Math.floor(Math.random() * masteries.length);
    let secondIndex = Math.floor(Math.random() * (masteries.length - 1));
    if (secondIndex >= firstIndex) secondIndex += 1;
    const pair: [Mastery, Mastery] = [masteries[firstIndex], masteries[secondIndex]];

    setSpinning(true);
    setResult(null);
    const segmentCenter = firstIndex * 36 + 18;
    const currentNormalized = ((rotation % 360) + 360) % 360;
    const landing = 360 - segmentCenter;
    const delta = 360 * 6 + ((landing - currentNormalized + 360) % 360);
    setRotation(rotation + delta);

    window.setTimeout(() => {
      setResult(pair);
      setHistory((items) => [pair, ...items].slice(0, 4));
      setSpinning(false);
    }, 4100);
  }

  return (
    <main>
      <div className="grain" aria-hidden="true" />
      <header className="masthead">
        <div className="brand-mark">GD</div>
        <div>
          <p className="eyebrow">Grim Dawn build forge</p>
          <h1>Mastery <em>Fatewheel</em></h1>
        </div>
        <div className="mastery-count"><strong>10</strong><span>masteries</span></div>
      </header>

      <section className="workspace">
        <div className="wheel-stage">
          <div className="pointer" aria-hidden="true" />
          <div
            className="wheel"
            style={{ background: wheel, transform: `rotate(${rotation}deg)` }}
            aria-label="Wheel containing all ten Grim Dawn masteries"
          >
            {masteries.map((mastery, index) => (
              <span
                className="wheel-label"
                key={mastery.id}
                style={{
                  transform: `rotate(${index * 36 + 18}deg) translateY(-40%)`,
                }}
              >
                <b style={{ transform: `rotate(${-index * 36 - 18}deg)` }}>
                  <small>{mastery.id}</small>{mastery.name}
                </b>
              </span>
            ))}
            <div className="wheel-hub"><span>✦</span></div>
          </div>
        </div>

        <aside className="results-panel">
          <p className="eyebrow">Your dual-class destiny</p>
          <div className={`result-area ${result ? "revealed" : ""}`} aria-live="polite">
            {result ? (
              <>
                <ResultCard number="I" mastery={result[0]} />
                <div className="plus">+</div>
                <ResultCard number="II" mastery={result[1]} />
              </>
            ) : (
              <div className="empty-result">
                <span>{spinning ? "✦" : "?"}</span>
                <h2>{spinning ? "The wheel is turning…" : "Awaiting fate"}</h2>
                <p>{spinning ? "Two paths are being chosen." : "Spin once to draw two unique masteries."}</p>
              </div>
            )}
          </div>

          <button className="spin-button" onClick={spin} disabled={spinning}>
            <span>{spinning ? "Consulting fate" : "Spin for two"}</span>
            <i aria-hidden="true">↻</i>
          </button>

          {history.length > 0 && (
            <div className="history">
              <p>Previous draws</p>
              {history.slice(result ? 1 : 0).map((pair, index) => (
                <div key={`${pair[0].id}-${pair[1].id}-${index}`}>
                  <span>{pair[0].name}</span><b>+</b><span>{pair[1].name}</span>
                </div>
              ))}
            </div>
          )}
        </aside>
      </section>

      <footer>
        <span>Two distinct masteries • No repeats within a draw</span>
        <span>Press <kbd>Tab</kbd> then <kbd>Enter</kbd> to spin</span>
      </footer>
    </main>
  );
}

function ResultCard({ number, mastery }: { number: string; mastery: Mastery }) {
  return (
    <div className="result-card" style={{ "--accent": mastery.color } as React.CSSProperties}>
      <div className="roman">{number}</div>
      <div><small>playerclass{mastery.id}</small><h2>{mastery.name}</h2></div>
    </div>
  );
}
