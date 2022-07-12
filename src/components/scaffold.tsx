import React, {Node} from 'react';
import {SafeAreaView} from 'react-native-safe-area-context';
import {StatusBar, StyleSheet} from 'react-native';
import PropTypes from 'prop-types';
import {useTheme} from 'react-native-paper';

interface parameter {
  children: Node;
  showStatus?: boolean;
  bgColorStatusBar?: string;
  bgColor?: string;
}

const Scaffold = (param: parameter) => {
  const {colors} = useTheme();

  let StatusBGColor =
    param.bgColorStatusBar !== null ? param.bgColorStatusBar : '#FFFF';
  let backgroundColor = param.bgColor != null ? param.bgColor : colors.tertiary;

  const styles = StyleSheet.create({
    container: {
      flex: 1,
      alignItems: 'center',
      justifyContent: 'center',
      backgroundColor: backgroundColor,
    },
  });

  return (
    <SafeAreaView style={styles.container}>
      <StatusBar hidden={!param.showStatus} backgroundColor={StatusBGColor} />
      {param.children}
    </SafeAreaView>
  );
};

Scaffold.protoTypes = {
  showStatus: PropTypes.bool,
  bgColorStatus: PropTypes.string,
  bgColor: PropTypes.string,
};

export default Scaffold;
