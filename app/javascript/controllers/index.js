// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

// $(document).ready(function() {
//     $('.add-to-cart-button').click(function() {
//         var itemId = $(this).closest('.menu-item').data('item-id');
//         var itemPrice = $(this).closest('.menu-item').data('item-price');

//         $.ajax({
//             url: '/carts/add_to_cart',
//             method: 'POST',
//             data: { item_id: itemId },
//             success: function(response) {
//                 // Update cart UI or show a success message
//             },
//             error: function(xhr, status, error) {
//                 console.error(error);
//             }
//         });
//     });
// });
