import Link from 'next/link'
import {MainContainer, Navbar} from "../components"
import {Box} from "@chakra-ui/react";

export default function Home() {
  return (
        <MainContainer title="Main">
            <Box p={4}>Main Page</Box>
        </MainContainer>
  )
}