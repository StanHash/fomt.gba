#include "shipping_bin.hh"

#include "unknown_inlines.hh"

// clang-format off

static u8 const sStartingDisplayedProductList[] =
{
    PRODUCT_TURNIP,
    PRODUCT_POTATO,
    PRODUCT_CUCUMBER,
    PRODUCT_CABBAGE,
    PRODUCT_TOMATO,
    PRODUCT_CORN,
    PRODUCT_ONION,
    PRODUCT_PINEAPPLE,
    PRODUCT_EGGPLANT,
    PRODUCT_CARROT,
    PRODUCT_SWEET_POTATO,
    PRODUCT_GREEN_PEPPER,
    PRODUCT_REGULAR_QUALITY_EGG,
    PRODUCT_GOOD_QUALITY_EGG,
    PRODUCT_HIGH_QUALITY_EGG,
    PRODUCT_MILK_S,
    PRODUCT_MILK_M,
    PRODUCT_MILK_L,
    PRODUCT_WOOL_S,
    PRODUCT_WOOL_M,
    PRODUCT_WOOL_L,
    PRODUCT_CHOCOLATE,
};

static u8 const sCropProductList[] =
{
    PRODUCT_TURNIP,
    PRODUCT_POTATO,
    PRODUCT_CUCUMBER,
    PRODUCT_CABBAGE,
    PRODUCT_STRAWBERRY,
    PRODUCT_TOMATO,
    PRODUCT_CORN,
    PRODUCT_ONION,
    PRODUCT_PINEAPPLE,
    PRODUCT_PUMPKIN,
    PRODUCT_EGGPLANT,
    PRODUCT_CARROT,
    PRODUCT_SWEET_POTATO,
    PRODUCT_GREEN_PEPPER,
    PRODUCT_SPINACH,
};

static u8 const sMineralProductList[] =
{
    PRODUCT_JUNK_ORE,
    PRODUCT_COPPER,
    PRODUCT_SILVER,
    PRODUCT_GOLD,
    PRODUCT_MYSTRILE,
    PRODUCT_ORICHALC,
    PRODUCT_ADAMANTITE,
    PRODUCT_MYTHIC_STONE,
    PRODUCT_PINK_DIAMOND,
    PRODUCT_ALEXANDRITE,
    PRODUCT_MOON_STONE,
    PRODUCT_SAND_ROSE,
    PRODUCT_DIAMOND,
    PRODUCT_EMERALD,
    PRODUCT_RUBY,
    PRODUCT_TOPAZ,
    PRODUCT_PERIDOT,
    PRODUCT_FLUORITE,
    PRODUCT_AGATE,
    PRODUCT_AMETHYST,
};

// clang-format on

ShippingBin::ShippingBin()
    : value_shipped(0)
{
    for (u32 i = 0; i < ARRAY_COUNT(sStartingDisplayedProductList); ++i)
        product_stats[sStartingDisplayedProductList[i]].ForceEnableDisplay();
}

u32 ShippingBin::GetValueShipped() const
{
    return value_shipped;
}

bool ShippingBin::IsDisplayEnabled(int product_id) const
{
    if (product_id < NUM_PRODUCTS)
        return product_stats[product_id].IsDisplayEnabled();

    return false;
}

u32 ShippingBin::GetAmountShipped(int product_id) const
{
    if (product_id < NUM_PRODUCTS)
        return product_stats[product_id].GetAmountShipped();

    return 0;
}

bool ShippingBin::HasShippedOneOfEachProduct() const
{
    for (u32 i = 0; i < NUM_PRODUCTS; ++i)
    {
        if (!product_stats[i].IsDisplayEnabled() || product_stats[i].GetAmountShipped() == 0)
            return false;
    }

    return true;
}

bool ShippingBin::HasShippedOneOfEachCrop() const
{
    for (u32 i = 0; i < ARRAY_COUNT(sCropProductList); ++i)
    {
        u32 product_id = sCropProductList[i];

        if (!product_stats[product_id].IsDisplayEnabled() || product_stats[product_id].GetAmountShipped() == 0)
            return false;
    }

    return true;
}

bool ShippingBin::HasShippedOneOfEachMineral() const
{
    for (u32 i = 0; i < ARRAY_COUNT(sMineralProductList); ++i)
    {
        u32 product_id = sMineralProductList[i];

        if (!product_stats[product_id].IsDisplayEnabled() || product_stats[product_id].GetAmountShipped() == 0)
            return false;
    }

    return true;
}

// required for matching ShippingBin::Ship
// reference can be replaced with regular GetValueShipped
static inline u32 GetValueShippedInl(ShippingBin const & self)
{
    return self.value_shipped;
}

void ShippingBin::Ship(Product const & slot)
{
    u32 price = slot.GetPrice();

    if (price > 0)
    {
        product_stats[slot.GetId()].ShipOne();

        u32 old_value_shipped = GetValueShippedInl(*this);
        value_shipped = old_value_shipped + min_inl<u32>(MAX_VALUE_TRACKED - old_value_shipped, price);
    }
}

void ShippingBin::ResetValueShipped()
{
    value_shipped = 0;
}

void ShippingBin::ForceEnableDisplay(int product_id)
{
    if (product_id < NUM_PRODUCTS)
        product_stats[product_id].ForceEnableDisplay();
}

ShippingBin::StatEnt::StatEnt()
{
    amount_shipped = 0;
    display_enabled = false;
}

bool ShippingBin::StatEnt::IsDisplayEnabled() const
{
    return display_enabled;
}

u32 ShippingBin::StatEnt::GetAmountShipped() const
{
    if (display_enabled)
        return amount_shipped;

    return 0;
}

void ShippingBin::StatEnt::ShipOne()
{
    if (!display_enabled)
        display_enabled = true;

    if (amount_shipped < MAX_AMOUNT_TRACKED)
        amount_shipped++;
}

void ShippingBin::StatEnt::ForceEnableDisplay()
{
    if (!display_enabled)
        display_enabled = true;
}
