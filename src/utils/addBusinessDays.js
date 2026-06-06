export function addBusinessDays(startDate, businessDays) {
  const result = new Date(startDate);
  let count = 0;

  while (count < businessDays) {
    result.setDate(result.getDate() + 1);
    const day = result.getDay();
    if (day !== 0 && day !== 6) count++;
  }

  return result;
}

export function calculateDeliveryWindow(minDays, maxDays) {
  const now = new Date();
  return {
    start: addBusinessDays(now, minDays),
    end: addBusinessDays(now, maxDays),
  };
}
