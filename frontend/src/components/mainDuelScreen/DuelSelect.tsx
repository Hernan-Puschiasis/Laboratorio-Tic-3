import React, { useState } from 'react';
import './DuelSelect.css';

interface DuelSelectProps{
    onClick: () => void;
    setRoundNumber: (round:number) => void;
    setDifficulty: (difficulty:string) => void;
    createRoom: () => void;
    isDataMissing: boolean;
}

const DuelSelect: React.FC<DuelSelectProps> = ({onClick, setRoundNumber, setDifficulty, createRoom, isDataMissing}) => {
  const roundNumbers = [3, 5, 7];
  const options = ['1 Primaria', '2 Primaria', '3 Primaria', '4 Primaria', '5 Primaria', '6 Primaria', '1 Secundaria', '2 Secundaria', '3 Secundaria', '4 Secundaria', '5 Secundaria', '6 Secundaria', 'GAL1 Universidad', 'GAL2 Universidad', 'AM1 Universidad', 'AM2 Universidad','AM3 Universidad', 'PyE Universidad'];
  const [isClickedArray, setIsClickedArray] = useState<boolean[]>([false,false,false]);
  
  const handleRoundDivClick = (round:number, index:number) => {
    setRoundNumber(round);
    setIsClickedArray((prev) => prev.map((_, i) => i === index));
  }

  return (
      <div className='select-container'>
        <p className='room-title'>Crea una sala</p>
        <p className='duel-select-sub-p'>Número de rondas</p>
        <div className='round-container'>
            {roundNumbers.map((round, index) => (
                <div className={`round-div ${isClickedArray[index] ? 'selected-round' : ''}`} onClick={() => handleRoundDivClick(round, index)}>{round}</div>
            ))}
        </div>
        <p className='duel-select-sub-p'>Elige una dificultad</p>
        <select id="dropdown" className="duel-dropdown" onChange={(e) => setDifficulty(e.target.value)}>
            <option value="" disabled selected>
                Elige una opción
            </option>
            {options.map((option, index) => (
                <option key={index} value={option}>
                    {option}
                </option>
            ))}
        </select>
        <button className='create-button' onClick={createRoom}>
          Crear
        </button>
        {isDataMissing ? <p className='duel-is-missing-data'>Seleccione rondas y dificultad</p> : <></>}
        <p className='comeback' onClick={onClick}>Volver</p>
      </div>
  );
};

export default DuelSelect;