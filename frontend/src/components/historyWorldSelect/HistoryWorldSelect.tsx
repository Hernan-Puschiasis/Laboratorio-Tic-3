import React from 'react';
import { useNavigate, useLocation } from 'react-router';
import { useState, useEffect } from 'react';
import axios from 'axios';
import { PATH } from '../../constants';
import LoadingPage from '../loadingPage/LoadingPage';
import NavBar from '../NavBar';
import PlanetContainer from '../planetChoiceButton/PlanetChoiceButton';
import './HistoryWorldSelect.css'

const HistoryWorldSelect: React.FC = () => {
    const [worlds, setWorlds] = useState<any[]>([]);
    const [isLoading, setIsLoading] = useState<boolean>(true);
    const navigate = useNavigate();
    const location = useLocation();
    //const token = location.state.token;
    //const userId = location.state.userId;
    const handleWorldSelect = (world:any) => {
        //navigate('/history/world', {state:{worldId: world.id, token: token, userId: userId}})
    }

    useEffect(() => {
        /*let config = {
          method: 'get',
          maxBodyLength: Infinity,
          url: `${PATH}/history/galaxy/getworlds/${location.state.galaxyId}`,
          headers: { 
            'Authorization': `Bearer ${token}`
          },
        };
    
        axios.request(config)
        .then((response) => {
            console.log(response.data);
            setWorlds(response.data.worlds);
            setIsLoading(false);
        })
        .catch((error) => {
          console.log(error);
        });*/

        //HardCode
        const data = {
            worlds : [
                {
                    id : "1",
                    name : "Suma",
                },
                {
                    id : "2",
                    name : "Resta",
                },
                {
                    id : "3",
                    name : "Multiplicacion",
                },
                {
                    id : "4",
                    name : "Division",
                },
                {
                    id : "5",
                    name : "Potencia",
                },
                {
                    id : "6",
                    name : "Raiz cuadrada",
                }
            ]
        };
        setWorlds(data.worlds);
        setIsLoading(false);
      }, []);

    return (
        <>
            {isLoading ? <LoadingPage/> : 
                <>
                    <NavBar showButtons={false}/>
                    <div className="planet-selection-screen">
                        <h1 className='planet-title'>Cada tema es un mundo elegí el tuyo</h1>
                        <div className="planet-grid">
                            {worlds.map((world) => (
                                <PlanetContainer
                                    key={world.id}
                                    world={world}
                                    handleWorldSelect={handleWorldSelect}
                                />
                            ))};
                        </div>
                    </div>
                </> 
            }
        </>
    );
};

export default HistoryWorldSelect;


//Old Code
/*<div className='worlds-container'>
                {worlds.map((world) => (
                    <div key={world.id} className="card" onClick={() => handleWorldSelect(world)}>
                        <h2>{world.name}</h2>
                    </div>
                ))};
                </div>*/