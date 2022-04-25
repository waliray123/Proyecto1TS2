let answ = 0 ;
let contPts = 0;
const showPoints = document.getElementById("showPoints");
function startGame(){
    const game_init = document.getElementById("game-inicio");
    game_init.style.display = "none";
    const game = document.getElementById("game");
    game.style.display = "flex";
    showPoints.innerHTML = '<p>Puntos obtenidos: '+contPts+' </p>';
    answ = sum();
}

function generateNumber(base){
    let number = Math.floor(Math.random()*base);
    return number;   
}

function sum(){
    let obj_operacion = document.getElementById("operacion_realizar");
    let op = generateNumber(3);
    let n1 = generateNumber(10);
    let n2 = generateNumber(10);
    let answ;
    switch(op){
        case 0:
            obj_operacion.innerText = '+';
            answ = n1 + n2;
            break;
        case 1:
            obj_operacion.innerText = '-';
            answ = Math.abs(n1 - n2);
            break;
        case 2: 
            obj_operacion.innerText = '*';
            answ = n1 * n2;
            break;
    }    
    document.getElementById("number1").innerHTML = '<img src="resources/images/numeros_mayas/'+n1+'.png">'
    document.getElementById("number2").innerHTML = '<img src="resources/images/numeros_mayas/'+n2+'.png">'
    return answ;
}

async function checkAnsw(){
    const playerAnsw = document.getElementById("answ");
    if (playerAnsw.value == answ) {
        showmessage('Bien hecho!','Click para continuar','success');
        playerAnsw.value = '';
        playerAnsw.focus(); //
        contPts++;
        answ = sum();
    }else{
        // alert('La respuesta correcta era: '  + answ + ' , Total de puntos: ' + contPts);
        showmessage('Incorrecto','La respuesta correcta era: '  + answ,'error');
        const button =  document.getElementById("btn-checkAnsw");
        button.onclick = reboot;
        button.innerText = 'Volver';
        // envia a la db el resultado obtenido
        const data = {contPts};
        const options = {
            method: 'POST',
            body: JSON.stringify(data),
            headers: {'Content-Type': 'application/json'}            
        }
        const response = await fetch('/matematica-maya-up-points',options)
        const json_res = await response.json();
        const supero_puntuacion = json_res.supero_puntuacion;
        if (supero_puntuacion) {
            showmessage('Felicidades','Acabas de superar tu record anterior de ' + json_res.pointsAnt,'success')
        }
    }
    showPoints.innerHTML = '<p>Puntos obtenidos: '+contPts+' </p>';
}

function reboot() {
    location.reload();
}

function showmessage(alertTitle,alertMessage,alertIcon){
    Swal.fire({
        title: alertTitle,
        text: alertMessage,
        icon: alertIcon,
    })
}