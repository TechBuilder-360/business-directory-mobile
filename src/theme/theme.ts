import {DefaultTheme} from 'react-native-paper';

export const theme = {
  ...DefaultTheme,
  roundness: 2,
  version: 3,
  colors: {
    ...DefaultTheme.colors,
    primary: '#98FF98',
    secondary: '#f1c40f',
    tertiary: '#E7FDE7',
  },
};

export type ThemeOverride = typeof theme;
