import * as React from 'react';
import cats from '../dummydata';
import CardList from './cardList';

const CategoryView = () => {
  return (
      <>
        {cats.map((item,index)=>{
        return (
          <>
            <h2 key={index}>{item}</h2><br />
            <CardList></CardList>
            <hr />
          </>
        )}
        )}
      
      </>
  )

}

export default CategoryView;