WordPress uses a template hierarchy to display different types of content. For the custom post type, it will look for:

archive-{post_type}.php
single-{post_type}.php


If these templates are not defined in the theme, then it will look for the general templates:

archive.php
single.php


The testimonials will be displayed in the testimonials archive page, which will be located on this page:

http://your-domain-goes-here.com/?post_type=testimonials

If you have the pretty permalinks enabled, then you can also access the page with this URL:

http://your-domain-goes-here.com/testimonials



(Note: if the pretty permalinks are not working for you, go to wp-admin -> Settings -> Permalinks and set them up, the way you want them and save the settings)

Post Process tell how to Submit Post using front end Form 