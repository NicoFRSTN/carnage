import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const initFlatpickr = () => {
  const bookingForm = document.getElementById('booking-form-div');
  if (bookingForm) {
    const bookings = JSON.parse(bookingForm.dataset.bookings);
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end" })],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      errorHandler: (error) => {
        try { CODE } catch (error) { alert(error); }
      },
      "disable": bookings,
    })
  }
};

export { initFlatpickr };
