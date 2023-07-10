import * as React from 'react';
import Card from '@mui/material/Card';


const ProdCard = (props) => {
  return (
    <Card sx={{ minWidth: 275 }} key={props.title}>
      <h1>{props.title}</h1>
      <h6>{props.desc}</h6>
    </Card>
  );
}

export default ProdCard;