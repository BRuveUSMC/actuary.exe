import std.stdio;
import std.conv;
import std.math;

void main(string[] args) {
    // Display custom ASCII art
    writeln("   ,---.       _,.----. ,--.--------.               ,---.                                                       ,----.         ,-.--,   ,----.  ");
    writeln(" .--.'  \\    .' .' -   /==/,  -   , -\\.--.-. .-.-..--.'  \\     .-.,.---.  ,--.-.  .-,--.                     ,-.--` , .--.-.  /=/, .',-.--` , \\ ");
    writeln(" \\==\\-/\\ \\  /==/  ,  ,-\\==\\.\\-.  - ,-.\\/==/ -|/=\\/  |\\==\\-/\\ \\   /==/  `   \\/==/- / /=/_ /                     |==|-  _.-\\==\\ -\\/=- / |==|-  _.-` ");
    writeln(" /==/-|_\\ | |==|-   |  .`--`\\==\\- \\  |==| ,||=| -|/==/-|_\\ | |==|-, .=., \\==\\, \\/=/. /                      |==|   `.-.\\==\\ `-' ,/  |==|   `.-. ");
    writeln(" \\==\\,   - \\|==|_   `-` \\    \\==\\_ \\ |==|- | =/  |\\==\\,   - \\|==|   '='  /\\==\\  \\/ -/                      /==/_ ,    / |==|,  - | /==/_ ,    / ");
    writeln(" /==/ -   ,||==|   _  , |    |==|- | |==|,  \\/ - |/==/ -   ,||==|- ,   .'  |==|  ,_/                       |==|    .-' /==/   ,   \\|==|    .-'  ");
    writeln("/==/-  /\\ - \\==\\.       /    |==|, | |==|-   ,   /==/-  /\\ - |==|_  . ,'.  \\==\\-, /             .=.        |==|_  ,`-.\\==/, .--, - |==|_  ,`-._ ");
    writeln("\\==\\ _\\.\\=\\.-'`-.`.___.-'     /==/ -/ /==/ , _  .\\==\\ _\\.\\=\\.-/==/  /\\ ,  ) /==/._/             :=; :       /==/ ,     \\==\\- \\/=/ , /==/ ,     / ");
    writeln(" `--`                        `--`--` `--`..---'   `--`       `--`-`--`--'  `--`-`               `=`        `--`-----`` `--`-'  `--``--`-----``  ");
    
    if (args.length != 4) {
        writeln("\nUsage: actuary <principal> <interest_rate> <time_period>");
        return;
    }

    real principal;
    real interestRate;
    long timePeriod;

    try {
        principal = to!real(args[1]);
        interestRate = to!real(args[2]);
        timePeriod = to!long(args[3]);
    } catch (Exception e) {
        writeln("Error: Invalid input.");
        return;
    }

    real futureValue = calculateFutureValue(principal, interestRate, timePeriod);
    writeln("\nFuture Value: ", futureValue);
}

real calculateFutureValue(real principal, real interestRate, long timePeriod) {
    return principal * (1 + (interestRate / 100)) ^^ timePeriod;
}
