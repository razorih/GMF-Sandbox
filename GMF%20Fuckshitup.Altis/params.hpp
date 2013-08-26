class TimeOfDay // ParamsArray[0]
{
    title = "Kellonaika:";
    values[] = {-6, 0, 7, 12, 14}; // Time offset = 12 hours. Add or substract from it. Note 24 hour time system
    texts[] = {"Aamu", "Keskipäivä", "Ilta", "Keskiyö", "Lapin yö"};
    default = 0;
};

class Fog // ParamsArray[1]
{
    title = "Sumu";
    values[] = {0, 0.25, 0.50, 0.75, 1};
    texts[] = {"0%", "25%", "50%", "75%", "100%"};
    default = 0;
};
