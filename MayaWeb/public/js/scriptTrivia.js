//Variables de auxiliares de las preguntas
var questionNumber = 0,
    totalCorrect = 0,
    totalPoints = 0,
    optionFinal = 0,
    userAnswer = 5,
    timer = null;

function ready(questionNum) {
    $('#start-button').hide();
    $('#text1').hide();
    $('#text2').hide();
    start(questionNumber);
};

function timesup() {
    answerCheck(userAnswer);
    setTimeout(function() {
        $(".submit-answer").removeClass("correctStyle incorrectStyle");
        start(questionNumber);
    }, 2300)
    questionNumber++;
};

function buttonPress(answerRecivied) {
    clearTimeout(timer);
    timer = null;
    userAnswer = parseInt(answerRecivied);
    timesup();
};


//Preguntas en array
var allQuestions = [{
    question: 'El calendario solar maya es llamado Haab ¿Que significa la palabra “haab”?',
    choices: ["Año", "Sol", "Calendario", "Calendario del sol"],
    image: "/resources/images/trivia/questions/haab.jpg",
    answer: 0,
    comment: "Haab significa Año en el lenguaje maya"
}, {
    question: 'El calendario lunar maya es llamado Tzolkin  ¿Que significa la palabra “Tzolkin”?',
    choices: ["La cuenta de los dias", "Los dias contados", "Dias lunares", "Calendario de la luna"],
    image: "/resources/images/trivia/questions/tzolkin.jpg",
    answer: 0,
    comment: "Tzolkin significa la cuenta de los dias"
}, {
    question: '¿Que sistema numerico utiliza la matematica maya?',
    choices: ["Vigesimal(20)", "Decimal(10)", "Octal(8)", "Binario(2)"],
    image: "/resources/images/trivia/questions/math.jpg",
    answer: 2,
    comment: "La matematica maya usa la base 8 (octal)"
}, {
    question: "¿Que simbolo representa el 0 en la matematica maya?",
    choices: ["El punto", "La raya", "La semilla", "El cero"],
    image: "/resources/images/trivia/questions/cero.jpg",
    answer: 2,
    comment: "La semilla o concha simboliza el 0"
}];

//Mensajes finales
var result = [{
    image: "/resources/images/trivia/final0.png",
    comment: "¡Felicidades! ¡Acertaste todas!"
}, {
    image: "/resources/images/trivia/final1.png",
    comment: " ¡Muy bien! ¡Vas mejorando!"
}, {
    image: "/resources/images/trivia/final2.png",
    comment: " ¡Bien! aunque puedes mejorar"
}, {
    image: "/resources/images/trivia/final3.png",
    comment: " Debes mejorar"
}];


// Pregunta siguiente o finaliza
var start = function(questionNumber) {
    $('h2').hide().fadeIn(1000);
    userAnswer = 5;

    if (questionNumber !== allQuestions.length) {
        question(questionNumber);
        document.getElementById('ix').src = "/resources/images/trivia/timer.gif";
        var titleIx = document.getElementById('ix-title');
        titleIx.style.color = '#ffffff';
        titleIx.innerHTML = "Tiempo restante:";
        document.getElementById('texto-ix').innerHTML = "Estas en la pregunta #" + (questionNumber + 1);
    } else {
        document.getElementById('ix').src = "/resources/images/trivia/hello.gif";
        var titleIx = document.getElementById('ix-title');
        titleIx.style.color = '#ffffff';
        titleIx.innerHTML = "¡Hasta la proxima!";
        document.getElementById('texto-ix').innerHTML = "¡Espero verte pronto!";
        end();
    }
    timer = setTimeout(timesup, 20000);
};

// Muestra la pregunta y sus posibles respuestas
function question(questionNum) {
    $("h2").text(allQuestions[questionNum].question);
    $("#image").html('<img src=' + allQuestions[questionNum].image + ' class="question-image" alt="">').hide().fadeIn(700);
    $.each(allQuestions[questionNum].choices, function(i, answers) {
        $("#" + i).html(answers).slideUp(500).slideDown(700);
    });
};

//Terminar el proceso de trivia
function end() {
    finalImage();
    $("#asnwers-container").hide();
    $("h2").text("Tu puntacion es " + totalCorrect + " de " + allQuestions.length + ". " + result[optionFinal].comment);
    $("#image").html('<img src=' + result[optionFinal].image + ' class="question-image-final "alt="">').fadeIn(1000);
    $("#try-again-container").show();
    restart();
};

// Calcula la puntuacion e imagen final
function finalImage() {
    if (totalCorrect < allQuestions.length && totalCorrect >= (allQuestions.length * .7)) {
        optionFinal = 1;
    } else if (totalCorrect <= (allQuestions.length * .6) && totalCorrect >= (allQuestions.length * .2)) {
        optionFinal = 2;
    } else if (totalCorrect !== allQuestions.length) {
        optionFinal = 3;
    }

    if (((totalCorrect / 5) * 100) > 75) {
        optionFinal = 0;
    } else if ((((totalCorrect / 5) * 100) < 75) && (((totalCorrect / 5) * 100) > 50)) {
        optionFinal = 1;
    } else if ((((totalCorrect / 5) * 100) < 50) && (((totalCorrect / 5) * 100) > 25)) {
        optionFinal = 2;
    } else {
        optionFinal = 3;
    }
}

//Funcion para reiniciar el juego
function restart() {
    $("#try-again").click(function() {
        questionNumber = 0;
        totalCorrect = 0;
        totalPoints = 0;
        clearTimeout(timer);
        timer = null;

        start(questionNumber);
        $("#try-again-container").hide();
        $("ul").fadeIn(400);
    });
}

//Revision de la respuesta
function answerCheck(userAnswer) {
    var correctAnswer = allQuestions[questionNumber].answer;
    document.getElementById('texto-ix').innerHTML = allQuestions[questionNumber].comment;
    if (userAnswer === correctAnswer) {
        totalCorrect++;
        totalPoints += 100;
        $("#" + userAnswer).addClass("correctStyle");
        document.getElementById('ix').src = "/resources/images/trivia/correct.gif";
        document.getElementById('points').innerHTML = totalPoints + " pts";
        var titleIx = document.getElementById('ix-title');
        titleIx.style.color = '#2ecc71';
        titleIx.innerHTML = "¡Correcto!";
    } else {
        $("#" + userAnswer).addClass("incorrectStyle");
        $("#" + correctAnswer).addClass("correctStyle");
        document.getElementById('ix').src = "/resources/images/trivia/incorrect.gif";
        var titleIx = document.getElementById('ix-title');
        titleIx.style.color = '#ff0000';
        titleIx.innerHTML = "¡Incorrecto!";
    }
};