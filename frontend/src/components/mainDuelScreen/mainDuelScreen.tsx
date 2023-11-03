import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router';
import { PATH } from '../../constants';
import axios from 'axios';
import DuelPlay from './DuelPlay';
import './MainDuelScreen.css';
import NavBar from '../NavBar';
import DuelSelect from './DuelSelect';

const MainDuelScreen: React.FC = () => {
    const [roundsNumber, setRoundsNumber] = useState<number>(3);
    const [duelId, setDuelId] = useState<string>('');
    const [showPlay, setShowPlay] = useState(true);
    const [showIncorrectCode, setShowIncorrectCode] = useState(false);
    const [difficulty, setDifficulty] = useState('');
    const navigate = useNavigate();

    const createRoom = () => {
        let config = {
            method: 'post',
            maxBodyLength: Infinity,
            url: `${PATH}/duel`,
            headers: { 
            'Authorization': `Bearer ${localStorage.getItem('token')}`,
            'Content-Type' : 'application/json'
            },
            data: {
                ownerId : localStorage.getItem('userId'),
                rounds: roundsNumber,
                universe: difficulty.split(' ')[1],
                galaxy: difficulty.split(' ')[0]
            }
        };

        axios.request(config)
        .then((response) => {
            setDuelId(response.data.newDuel.id);
            navigate(`/duel/wait/${response.data.newDuel.id}`, {state:{duelId: response.data.newDuel.id, ownerId: localStorage.getItem('userId')}})
        })
        .catch((error) => {
            console.log(error);
        });
        
    }


    const enterRoom = (room:string) => {
        let config = {
            method: 'get',
            maxBodyLength: Infinity,
            url: `${PATH}/duel/wait/${room}`,
            headers: { 
              'Authorization': `Bearer ${localStorage.getItem('token')}`
            },
          };
      
          axios.request(config)
          .then((response) => {
                console.log(response.data)
                navigate(`/duel/wait/${duelId}`, {state:{duelId: response.data.resp.duelId, ownerId: response.data.resp.ownerId}})
          })
          .catch((error) => {
            setShowIncorrectCode(true);
            console.log(error);
          });
    }

    return (
        <>
            <NavBar showButtons={false}/>
            <div className='main-duel-screen-container'>
                {showPlay ? <DuelPlay onClick={() => setShowPlay(false)} onSubmit = {() => enterRoom(duelId)} setDuelId={setDuelId}/> : <DuelSelect onClick={() => setShowPlay(true)} setRoundNumber={setRoundsNumber} setDifficulty={setDifficulty} createRoom={createRoom}/>} 
            </div>
        </>
    );
};

export default MainDuelScreen;
