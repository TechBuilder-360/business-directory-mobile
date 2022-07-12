import { ThemeOverride } from './theme';

declare global {
  namespace ReactNativePaper {
    interface Theme extends ThemeOverride
  }
}
