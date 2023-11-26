const addButton = document.getElementById("addButton");
const fieldContainer = document.getElementById("fieldContainer");

let fieldIndex = 1;

addButton.addEventListener("click", () => {
  const newField = document.createElement("div");
  newField.innerHTML = `
    <label class="form-label fw-bold" for="field${fieldIndex}">Track ${
    fieldIndex + 1
  }:</label>
    <input class="form-control" type="text" name="field[]" id="field${
      fieldIndex + 1
    }" required>
  `;
  fieldContainer.appendChild(newField);
  fieldIndex++;
});

// artist textfield
$(document).ready(function () {
  // When the user selects "Other/ Add new" option, enable text field for input
  $("#myDropdown").on("change", function () {
    var selectedOption = $(this).val();
    if (selectedOption === "other") {
      $(this).replaceWith(
        '  <div class="row mb-4"><div class="form-outline"><input type="text" id="myTextField" name="newartistField" placeholder="Enter new artist name" class="form-control" /></div> </div > <div class="col"><div class="form-outline"> <label class="form-label fw-bold">Upload Image</label><input type="file" class="form-control" id="artistimgField" name="artistimgField" /> </div> </div> </div > </div >'
      );
    }
  });
});
