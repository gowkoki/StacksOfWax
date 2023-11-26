document.addEventListener("DOMContentLoaded", function () {
  // Function to update the Edit and Delete button URL
  function updateEditButtonUrl() {
    const selectedCollectionId = document.getElementById("collection").value;
    const userId = document.getElementById("uIdField").value;
    const editButton = document.getElementById("editButton");
    editButton.href = `/editcollname?u_id=${userId}&collection_id=${selectedCollectionId}`;
    deleteButton.formAction = `/setting?u_id=${userId}&collection_id=${selectedCollectionId}&_method=DELETE`;
  }

  document
    .getElementById("collection")
    .addEventListener("change", updateEditButtonUrl);
});
