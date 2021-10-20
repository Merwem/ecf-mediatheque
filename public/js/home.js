books = document.querySelectorAll('.card_book')
categorys = document.querySelectorAll('.cat')
input = document.getElementById('input')
categorys.forEach(cat => {
    cat.addEventListener('click', () => {
        books.forEach(book => {
            if (book.classList[1] == cat.innerText) {
                book.classList.remove('card_non_active')
                book.classList.add('card_active')
            }else{
                book.classList.add('card_non_active')
            }
            categorys.forEach((el) => {
                el.classList.remove('cat_active')
            })
            
            cat.classList.add('cat_active')
        });
    })

    
});
