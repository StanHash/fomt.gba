#include "pet.hh"

#include <stdlib.h> // rand

Pet::Pet(char const * name, ActorLocation const & location, u32 age)
    : Animal(name, location, age)
{
    adequacy = 0;
    has_played_today = false;
    has_talked_today = false;
}

Pet::Pet(ActorLocation const & location, u32 age)
    : Animal(location, age)
{
    adequacy = 0;
    has_played_today = false;
    has_talked_today = false;
}

u32 Pet::GetAdequacy() const
{
    return adequacy;
}

bool Pet::HasPlayedToday() const
{
    return has_played_today;
}

bool Pet::HasTalkedToday() const
{
    return has_talked_today;
}

void Pet::AddAdequacy(int amount)
{
    u32 total = adequacy + amount;

    // Clamps the value between 0 and 250
    if ((int)total < 0)
        total = 0;
    else if (total > 250)
        total = 250;

    adequacy = total;
}

void Pet::SubtractAdequacy(int amount)
{
    AddAdequacy(-amount);
}

void Pet::SetHasPlayedToday()
{
    has_played_today = true;
}

void Pet::SetHasTalkedToday()
{
    has_talked_today = true;
}

void Pet::DayUpdate(bool disable_affection_decay)
{
    bool brushed = HasBeenBrushedToday();
    bool talked = HasBeenTalkedTo();

    Animal::DayUpdate();

    if (!disable_affection_decay && !brushed && !talked && !has_played_today && !has_talked_today && (rand() % 100) < 30)
    {
        SubtractAffection(1);
    }

    if (has_played_today)
    {
        AddAdequacy(1);
        has_played_today = false;
    }

    if (has_talked_today)
    {
        AddAffection(1);
        has_talked_today = false;
    }
}
