(function($) {

    Drupal.behaviors.mayatime = {
        attach: function(context, settings) {

            (jQuery)('.glossary-tip', context).qtip({
                position: {
                    my: 'bottom center',
                    at: 'top center'
                },
                content: {
                    attr: 'title' // Use the ALT attribute of the area map for the content
                },
                style: {
                    classes: 'page-glyph-image-tooltips'
                }
            });

            //hash of month and day lengths for validation
            MonthLengths = { 0: 31, 1: 29, 2: 31, 3: 30, 4: 31, 5: 30, 6: 31, 7: 31, 8: 30, 9: 31, 10: 30, 11: 31 };
            Months = { 0: "enero", 1: "febrero", 2: "marzo", 3: "abril", 4: "mayo", 5: "junio", 6: "julio", 7: "agosto", 8: "septiembre", 9: "octubre", 10: "noviembre", 11: "diciembre" };
            haabMonths = { 0: "Pop", 1: "Wo'", 2: "Sip", 3: "Sotz'", 4: "Sek", 5: "Xul", 6: "Yaxk'in", 7: "Mol", 8: "Ch'en", 9: "Yax", 10: "Sak'", 11: "Keh", 12: "Mak", 13: "K'ank'in", 14: "Muwan", 15: "Pax", 16: "K'ayab", 17: "kumk'u", 18: "Wayeb" };
            tzolkinMonths = { 0: "Imix'", 1: "Ik'", 2: "Ak'b'al", 3: "K'an", 4: "Chikchan", 5: "Kimi", 6: "Manik'", 7: "Lamat", 8: "Muluk", 9: "Ok", 10: "Chuwen", 11: "Eb'", 12: "B'en", 13: "Ix", 14: "Men", 15: "k'ib'", 16: "kab'an", 17: "Etz'nab'", 18: "Kawak", 19: "Ajaw" };



            today = new Date();
            y = today.getFullYear();
            m = today.getMonth() + 1;
            d = today.getDate();
            if (m <= 9) {
                m = '0' + m;
            }
            (jQuery)('#date-calc').val(y + "-" + m + "-" + d);

            convertDate();

            (jQuery)('#convert').click(function() {
                convertDate();
            });

        }
    };

})(jQuery);


function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ".");
}

function validateDate(m, d, y) {

    //greater than max number days in month
    if (d > MonthLengths[m]) {
        alert(Months[m] + " no contiene " + d + " d????as.");
        return false;
    }
    //negative days
    if (d < 1) {
        alert('D????as debe ser un n????mero positivo.');
        return false;
    }

    //year == 0
    if (y == 0) {
        alert("Calendario juliano no tiene un a????o cero.");
        return false;
    }

    //keep valies between -4000 and 4000
    if (y > 4000 || y < -4000) {
        alert("Por favor introduzca un a????o entre -4000 (B.C.) and 4000 (A.D.)");
        return false;
    }

    if ((m == 1) && (d == 29)) {
        if (y % 4 != 0) {
            alert(Months[m] + " no contiene " + d + " D????a en el a????o " + y);
            return false;
        }
        if ((y > 1582) && (y % 4 == 0) && (y % 100 == 0) && (y % 400 != 0)) {
            alert(Months[m] + " no contiene " + d + " D????a en el a????o " + y);
            return false;
        }
    }

    if (y < 0) {
        y += 1;
    }

    return true;


}


function convertDate() {

    valorFecha = (jQuery)('#date-calc').val();
    //Separar fecha
    valoresFecha = valorFecha.split('-');
    m = valoresFecha[1];
    d = valoresFecha[2];
    y = valoresFecha[0];

    m = parseInt(m) - 1;
    d = parseInt(d);
    y = parseInt(y);

    console.log(m);
    console.log(d);
    console.log(y);


    //validate
    valid = validateDate(m, d, y);
    if (!valid)
        return false;

    //quick hack for negative dates
    if (y < 0) {
        y += 1;
    }

    var longCount = toLCD(toJDN(m, d, y));
    lcd_string = "";
    (jQuery).each(longCount, function(i, el) {
        //for long count, iterate through array. numbers will be in correct order to determine glyph
        (jQuery)('.calendar-glyph[rel="' + i + '"]').find('div.numeral').css('background-image', 'url(/resources/images/numerals/' + el + '.png)');
        lcd_string += (i < 4) ? el + "." : el;
    });






    (jQuery)('span#lcd').text(lcd_string);
    (jQuery)('span.lcd-baktuns').text(longCount[0]);
    (jQuery)('span#lcd-baktuns-days').text(numberWithCommas(longCount[0] * 144000));

    (jQuery)('span.lcd-katuns').text(longCount[1]);
    (jQuery)('span#lcd-katuns-days').text(numberWithCommas(longCount[1] * 7200));

    (jQuery)('span.lcd-tuns').text(longCount[2]);
    (jQuery)('span#lcd-tuns-days').text(numberWithCommas(longCount[2] * 360));

    (jQuery)('span.lcd-uinals').text(longCount[3]);
    (jQuery)('span#lcd-uinals-days').text(numberWithCommas(longCount[3] * 20));

    (jQuery)('span.lcd-kins').text(longCount[4]);
    (jQuery)('span#lcd-kins-days').text(numberWithCommas(longCount[4] * 1));



    //calculate tzolkin date

    var tzolkinDate = toTD(toJDN(m, d, y));

    (jQuery)('#tzolkin.calendar-glyph').find('div.numeral').css('background-image', 'url(/resources/images/numerals/' + tzolkinDate.numeral + '.png)');
    (jQuery)('#tzolkin.calendar-glyph').css('background-image', 'url(/resources/images/tzolkin/tzolkin' + tzolkinDate.symbol + '.png)');

    (jQuery)('#tzolkin-date').text(tzolkinDate.numeral);
    (jQuery)('#tzolkin-month').text(tzolkinDate.month);


    //calculate haab date
    var haabDate = toHD(toJDN(m, d, y));
    //console.log(haabDate);
    (jQuery)('#haab.calendar-glyph').find('div.numeral').css('background-image', 'url(/resources/images/numerals/' + haabDate.numeral + '.png)');
    (jQuery)('#haab.calendar-glyph').css('background-image', 'url(/resources/images/haab/haab' + haabDate.symbol + '.png)');

    (jQuery)('#haab-date').text(haabDate.numeral);
    (jQuery)('#haab-month').text(haabDate.month);


}



function toJDN(m, d, y) {

    m += 1;
    if ((m == 1.0) || (m == 2.0)) {
        y -= 1.0;
        m += 12.0;
    }
    B = 0.0;
    if ((y > 1582.0) || ((y == 1582.0) && (m > 10.0)) || ((y == 1582.0) && (m == 10.0) && (d > 15.0))) {
        A = inty(y / 100.0);
        B = 2.0 - A + inty(A / 4.0);
    }
    jd = inty(365.25 * (y + 4716.0)) + inty(30.600100000000001 * (m + 1.0)) + d + B - 1524.5;

    return jd;

}

function inty(x) {
    return (x > 0) ? Math.floor(x) : Math.ceil(x);
}


function toLCD(jdn) {

    //console.log("JDN = " + jdn);

    longNumber = new Array(5);
    longCount = Math.round(jdn - 584282.5);

    //console.log("Long Count = " + longCount);

    longNumber[0] = Math.floor(longCount / 144000);
    longCount %= 144000;

    longNumber[1] = Math.floor(longCount / 7200);
    longCount %= 7200;

    longNumber[2] = Math.floor(longCount / 360);
    longCount %= 360;

    longNumber[3] = Math.floor(longCount / 20);

    longNumber[4] = Math.floor(longCount % 20);


    //console.log(longNumber);
    return longNumber;


}


function toTD(jdn) {
    //console.log("JDN = " + jdn);
    longCount = Math.round(jdn - 584282.5);
    number = (((longCount + 3) % 13) + 1);
    //console.log(number);
    name = ((longCount + 19) % 20);
    tzolkinDate = { numeral: number, symbol: name, month: tzolkinMonths[name] };
    return tzolkinDate;
}

function toHD(jdn) {

    longCount = Math.round(jdn - 584282.5);
    dayOfHaab = (longCount - 17) % 365;
    var day = Math.round(dayOfHaab % 20);
    var month = Math.round(Math.floor(dayOfHaab / 20));
    haabDate = { numeral: day, symbol: month, month: haabMonths[month] };
    return haabDate;
}

function toLN(x, y) {
    return ((20 * x + y + 8) % 9 + 1);
}