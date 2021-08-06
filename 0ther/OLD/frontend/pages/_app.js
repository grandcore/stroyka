import { ChakraProvider } from "@chakra-ui/react"
import "../styles/index.global.scss";
function App({ Component, pageProps }) {
  return (
    <ChakraProvider>
      <Component {...pageProps} />
    </ChakraProvider>
  )
}
export default App