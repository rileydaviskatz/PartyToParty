import * as React from 'react';
import cardInfo from '../carddummy';
import ProdCard from './cards';
const CardList = () => {
    for(let i = 0; i <= cardInfo.length; i++) {
      return (
        <>
          <h6>{`${cardInfo[i].title}`}</h6>
          <h1>test</h1>
        </>
        //<ProdCard title={prod.title} desc={prod.desc}></ProdCard>
      )
   
  }
}
  


export default CardList;