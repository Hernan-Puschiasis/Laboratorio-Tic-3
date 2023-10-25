import React, { useState } from 'react';
import { BrowserRouter, Routes, Route, Navigate, useParams} from 'react-router-dom'
import Origin from './containers/origin';
import LevelSelectionScreen from './components/worldsHistory/LevelSelectionScreen';
import QuestionScreen from './components/QuestionScreen';
import TriviaScreen from './components/triviaScreen/TriviaScreen';
import TriviaPlayScreen from './components/triviaPlayScreen/TriviaPlayScreen';
import FirstPage from './containers/FirstPage';
import HistoryUniverseSelect from './components/historyUniverseSelect/HistoryUniverseSelect';
import HistoryGalaxySelect from './components/historyGalaxySelect/HistoryGalaxySelect';
import HistoryWorldSelect from './components/historyWorldSelect/HistoryWorldSelect';

import MainDuelScreen from './components/mainDuelScreen/mainDuelScreen';
import DuelPlayScreen from './components/duelPlayScreen/DuelPlayScreen';


function App() {

  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<FirstPage/>}/>
        <Route path="/history/world" element={<LevelSelectionScreen/>} />
        <Route path="/question/:level" element={<QuestionScreen />}/>
        <Route path = "/trivia" element={<TriviaScreen/>}/>
        <Route path = "/trivia/play" element={<TriviaPlayScreen/>}/>
        <Route path = "/history" element={<HistoryUniverseSelect/>}/>
        <Route path = "/history/universe" element={<HistoryGalaxySelect/>}/>
        <Route path = "/history/galaxy" element={<HistoryWorldSelect/>}/>
        <Route path = "/duel" element = {<MainDuelScreen/>}/>
        <Route path = "/duel/:duelId" element = {<DuelPlayScreen/>}/>
        <Route path = "/*" element={<Navigate to="/" />}/> 
      </Routes>
    </BrowserRouter>
    
  );
}

export default App;

