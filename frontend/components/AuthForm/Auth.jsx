import {
Box,
Button,
Heading,
SimpleGrid,
Text,
useColorModeValue,
VisuallyHidden,
} from '@chakra-ui/react'
import * as React from 'react'
import { FaFacebook, FaGithub, FaGoogle } from 'react-icons/fa'
import { Card } from './Card'
import { DividerWithText } from './DividerWithText'
import { Link } from './Link'
import { AuthForm } from './AuthForm'


export default class Auth extends React.Component {
    render() {
        return(
            <Box
                
                minH="100vh"
                py="120"
                px={{
                base: '4',
                lg: '8',
                }}
            >
                <Box maxW="md" mx="auto">

                <Heading textAlign="center" size="xl" fontWeight="extrabold">
                    Войти
                </Heading>
                <Text mt="4" mb="8" align="center" maxW="md" fontWeight="medium">
                    <Text as="span">Нет аккаунта?</Text>
                    <Link href="#">Зарегистрироваться</Link>
                </Text>
                <Card>
                    <AuthForm />
                </Card>
                </Box>
            </Box>
        )
    }
}