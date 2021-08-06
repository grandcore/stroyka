import * as React from 'react';
import {
    Box,
    Button,
    Heading,
    SimpleGrid,
    Text,
    useColorModeValue,
    VisuallyHidden,
  } from '@chakra-ui/react'
import { FaFacebook, FaGithub, FaGoogle } from 'react-icons/fa'
import { Auth } from "../../components"

class AuthPage extends React.Component {
    render(){
        return(
            <div className="idk" style={{alignItems: "center"}}>
                <Auth />
            </div>
        )
    }
}

export default AuthPage