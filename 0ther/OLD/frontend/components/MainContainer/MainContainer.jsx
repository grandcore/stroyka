import * as React from "react";
import {Navbar} from "../Navbar/Navbar";
import Head from "next/head";


const MainContainer = ({children, title}) => {
    return(
        <>
            <Head>
                <meta keywords="openschool.org, grandcore" />
                <title>{title}</title>
            </Head>
            <div>
                <Navbar />
            </div>
            <div>
                {children}
            </div>
        </>
    );
}

export default MainContainer