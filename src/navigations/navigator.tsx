import * as React from 'react';
import {createNativeStackNavigator} from '@react-navigation/native-stack';
import {Onboard, Splash} from '../screens';

const Stack = createNativeStackNavigator();

export const Navigation = () => {
  return (
    <Stack.Navigator initialRouteName={'Onboard'}>
      <Stack.Screen
        name="Splash"
        component={Splash}
        options={{headerShown: false}}
      />
      <Stack.Screen
        name="Onboard"
        component={Onboard}
        options={{headerShown: false}}
      />
    </Stack.Navigator>
  );
};
