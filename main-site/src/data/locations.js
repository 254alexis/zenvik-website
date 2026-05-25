export const locations = [
  {
    id: "ke",
    country: "Kenya",
    currency: "KES",
    flag: "🇰🇪",
    label: "Kenya (KES)",
  },
  {
    id: "ug",
    country: "Uganda",
    currency: "UGX",
    flag: "🇺🇬",
    label: "Uganda (UGX)",
  },
  {
    id: "tz",
    country: "Tanzania",
    currency: "TZS",
    flag: "🇹🇿",
    label: "Tanzania (TZS)",
  },
  {
    id: "rw",
    country: "Rwanda",
    currency: "RWF",
    flag: "🇷🇼",
    label: "Rwanda (RWF)",
  },
  {
    id: "global",
    country: "Global",
    currency: "USD",
    flag: "🌍",
    label: "Global (USD)",
  },
]

export const getLocationById = (id) => {
  return locations.find((loc) => loc.id === id) || locations[0]
}
