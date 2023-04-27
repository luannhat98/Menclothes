const totalPages =15; // Tổng số trang
const visiblePages = 5; // Số trang hiển thị

let currentPage = 1; // Trang hiện tại

// Tạo danh sách các trang
function createPageList() {
    let pageList = "";

    // Tính toán trang đầu tiên và trang cuối cùng
    let firstPage = Math.max(currentPage - Math.floor(visiblePages / 2), 1);
    let lastPage = Math.min(firstPage + visiblePages - 1, totalPages);

    // Hiển thị danh sách các trang
    for (let i = firstPage; i <= lastPage; i++) {
        pageList += `<button class="page-btn ${i === currentPage ? "active" : ""}" data-page="${i}">${i}</button>`;
    }

    document.getElementById("page-list").innerHTML = pageList;
}

// Cập nhật trang hiện tại và danh sách các trang
function updatePagination() {
    createPageList();

    // Ẩn nút Previous nếu ở trang đầu tiên
    if (currentPage === 1) {
        document.getElementById("prev-btn").style.display = "none";
    } else {
        document.getElementById("prev-btn").style.display = "block";
    }

    // Ẩn nút Next nếu ở trang cuối cùng
    if (currentPage === totalPages) {
        document.getElementById("next-btn").style.display = "none";
    } else {
        document.getElementById("next-btn").style.display = "block";
    }
}

// Bấm nút Previous
document.getElementById("prev-btn").addEventListener("click", () => {
    if (currentPage > 1) {
        currentPage--;
        updatePagination();
    }
});

// Bấm nút Next
document.getElementById("next-btn").addEventListener("click", () => {
    if (currentPage < totalPages) {
        currentPage++;
        updatePagination();
    }
});

// Bấm trang
document.getElementById("page-list").addEventListener("click", (event) => {
    if (event.target.classList.contains("page-btn")) {
        currentPage = parseInt(event.target.dataset.page);
        updatePagination();
    }
});

// Tạo danh sách các trang ban đầu
createPageList();