import React from 'react';
import {Image, Text} from 'react-native';
import Scaffold from '../components/scaffold';

const Splash = ({navigation}) => {
  return (
    <Scaffold>
      <Image
        source={require('../assets/images/logo.png')}
        style={{width: 250, height: 250}}
        resizeMode={'contain'}
      />
    </Scaffold>
  );
};

export default Splash;
