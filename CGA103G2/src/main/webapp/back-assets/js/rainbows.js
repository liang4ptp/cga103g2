/* Codename Rainbows */
/* April 14, 2009 Version */

/* Changelog */
/* April 14: Fixed the fact that it didn't actually work, line of debug code was breaking it */

/*

Copyright (c) 2009 Dragon Interactive

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/

/* Concept and styles by Anand Sharma, coded by Yuri Vishnevsky. Special thanks to John Resig & the jQuery team for being so awesome. */

/* Dependencies: jQuery, stylesheet with auxiliary styles (see bottom of page) */
rainbows = {
    init: function(o) {
        $(function() {
            if (typeof o == "string")
                o = {
                    'selector': o
                };

            // TODO: Expand 3-letter hex codes into 6 letters

            // Default options
            var opt = {
                'selector': '.rainbows'
            };

            $.extend(opt, o);


            // Apply the gradient
            if (opt.from || opt.to) rainbows.gradient(opt);

            // Make snafucated
            if (opt.shadow || opt.highlight) rainbows.makeSnafucated(opt);
        });
    },

    gradient: function(o) {

        var opt = {
            'selector': '.rainbows',
            'from': '#ffffff',
            'to': '#000000'
        };

        $.extend(opt, o);

        $(opt.selector).each(function() {


            // Set the position to relative (Absolute should work too?)
            // TODO: Test this with absolute
            // if ($(this).css('position') != 'absolute')

            $(this).css({
                'position': 'relative',
                'overflow': 'hidden'
            });

            var h = $(this).height();
            var origH = $(this).css('height');

            var spans = [];

            var html;

            // Parse the colors into their R, G, and B constituents
            var f = [parseInt(opt.from.substring(1, 3), 16),
                    parseInt(opt.from.substring(3, 5), 16),
                    parseInt(opt.from.substring(5, 7), 16)
                ],

                t = [parseInt(opt.to.substring(1, 3), 16),
                    parseInt(opt.to.substring(3, 5), 16),
                    parseInt(opt.to.substring(5, 7), 16)
                ];


            // Store the initial contents in initHTML
            // in case they are needed later
            if (this.initHTML)
                html = this.initHTML;
            else
                html = this.innerHTML;

            this.initHTML = html;

            // Give it a bit of expanding space, in case the font is resized.
            for (var i = 0; i < h * 1.0; i++) {
                // The ratio of the "from" to "to" colors
                var ratio = 1 - (h - Math.min(i, h)) / h;

                // Interpolate the three colors.
                var c = [Math.round(f[0] * (1 - ratio) + t[0] * ratio),
                    Math.round(f[1] * (1 - ratio) + t[1] * ratio),
                    Math.round(f[2] * (1 - ratio) + t[2] * ratio)
                ];


                //	d('C: ' + c);

                // TODO: rationale for -i? offset them down

                /*
                	Two spans. The outer span is 1px tall and is positioned vertically
                */

                // Push the spans into a temporary array
                spans.push('<span class="rainbow rainbow-' + i + '" style="color: rgb(' + c[0] + ',' + c[1] + ',' + c[2] + ');"><span style="top: ' + (-i) + 'px;">' + html + '</span></span>');

            }


            // Concatenate the spans and insert them into the document
            this.innerHTML = spans.join('');
            $(this).css('height', origH);
        });

    },

    /* make snafucated */
    makeSnafucated: function(o) {
        $(o.selector).each(function() {
            $(this).css('position', 'relative');

            // Get the original html
            if (this.initHTML)
                html = this.initHTML;
            else
                html = this.innerHTML;

            var hi = '',
                sh = '';

            // Create the wrappers, and let CSS handle the rest.
            if (o.shadow) sh = '<span class="rainbows-shadow">' + html + '</span>';
            if (o.highlight) hi = '<span class="rainbows-highlight">' + html + '</span>';

            // Append them to the element
            //	this.innerHTML = this.innerHTML + '<span class="rainbows-wrap">' + sh + hi + '</span>';
            this.innerHTML = this.innerHTML + sh + hi;


        });
    }
};

rainbows.init({
    highlight: true,
    shadow: true,
    from: '#ffffff',
    to: '#000000'
});


/* The code generated by Codename Rainbows needs some styling. Add this code to your stylesheet or as a new sheet. Some slight modifications may be necessary depending on how and where it is used. Don't copy the enclosing comments. */

/*

.rainbow {
	background: transparent;
	display: block;
	position: relative;
	height: 1px;
	overflow: hidden;
	z-index: 4;
	}

	.rainbow span {
		position: absolute;
		top: 0;
		left: 1px;
		display: block;
		xwhite-space: nowrap;
		}
	
	a .rainbow span {
		white-space: nowrap;
		}

.rainbows-highlight {
	color: #fff !important;
	display: block;
	position: absolute;
	top: -1px;
	left: 0px;
	z-index: 2;
	}

.rainbows-shadow {
	color: #000 !important;
	display:block;
	position: absolute;
	top: 1px;
	left: 2px; 
	z-index: 3;
	}

*/