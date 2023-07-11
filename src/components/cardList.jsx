import * as React from 'react';
import cardInfo from '../carddummy';
import ProdCard from './cards';
import Box from '@mui/material/Box';
const CardList = () => {
  return (
    <>
    {cardInfo.map((item, index) => {
      return (
        <Box display="inline-block">
          <ProdCard title={item.title} desc={item.desc}></ProdCard>
        </Box>
      )
    })}
    </>
  )
}
  


export default CardList;