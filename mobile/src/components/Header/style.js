import { StyleSheet } from "react-native";
import fonts from "../../styles/fonts";

export const styles = StyleSheet.create({
    container:{
        flex: 1,
    },

    header:{
        backgroundColor: '#005f41',
        shadowColor: 'rgba(0, 0, 0, 0.1)',
        shadowOpacity: 0.1,
        elevation: 6,
        shadowOffset : { width: 1, height: 5},
        borderBottomRightRadius: 5,
        borderBottomLeftRadius: 5,
        height: 60,
    },

    menu:{
        position: 'absolute',
        left: 20,
        alignSelf: "center",
        top: 13,
    },

    containerHeader:{
        flexDirection: 'row',
        justifyContent: "center",
        alignItems: "center",
    },

    tituloHeader:{
        color: '#fff', 
        fontSize: 22, 
        fontFamily: fonts.text, 
        marginTop: 17,
    },

})