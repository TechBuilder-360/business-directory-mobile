import React from 'react';
import type {Node} from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {Navigation} from './src/navigations/navigator';
import {Provider as PaperProvider} from 'react-native-paper';
// import {Provider as StoreProvider} from 'react-redux';
// import store from './src/store/store';
import {theme} from './src/theme/theme';

const App: () => Node = () => {
  return (
    // <StoreProvider store={store}>
    <PaperProvider theme={theme}>
      <NavigationContainer>
        <Navigation />
      </NavigationContainer>
    </PaperProvider>
    // </StoreProvider>
  );
};

export default App;
