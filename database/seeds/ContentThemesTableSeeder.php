<?php

use Illuminate\Database\Seeder;

class ContentThemesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        DB::table('content_themes')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        DB::table('content_themes')->insert([
            'name' => 'snow',
            'background' => '#000000',
            'json_data'=> '[
				{
					"type": "textarea",
					"subtype": "tinymce",
					"label": "Text",
					"className": "form-control",
					"name": "textarea-1522309024344",
					"value": "<h1 style=\"text-align: center;\"><span style=\"color: #ff6600;\">Please enter text here</span></h1>\n<p style=\"text-align: center;\"><span style=\"color: #ff6600;\">-------Please enter text here-------</span></p>\n<p style=\"text-align: center;\">&nbsp;</p>\n<h1><span style=\"background-color: #000000; color: #ff6600;\">Please enter text here</span></h1>"
				},
				{
					"type": "slideshow",
					"label": "Slideshow",
					"name": "slideshow-1522309103471",
            		"values": [
            			{"source": "https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"},
            			{"source":"https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"},
            			{"source":"https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"},
            			{"source":"https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"},
            			{"source":"https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"},
            			{"source":"https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"}
            		]
				},
				{
					"type": "textarea",
					"subtype": "tinymce",
					"label": "Text",
					"className": "form-control",
					"name": "description",
					"value": "<p><span style=\"background-color: rgb(0, 0, 0); color: rgb(255, 255, 255);\" data-mce-style=\"background-color: #000000; color: #ffffff;\">Please enter text here</span></p>"
				}
			]'
        ]);

        DB::table('content_themes')->insert([
            'name' => 'fire',
            'background' => '#ffffff',
            'json_data'=> '[
				{
					"type": "textarea",
					"subtype": "tinymce",
					"label": "Text",
					"className": "form-control",
					"name": "textarea-1522309324031",
					"value": "<h1><span style=\"color: #000000;\">Please enter text here</span></h1>\n<p>Please enter text here</p>\n<h5><span style=\"color: #999999;\">Please enter text here</span></h5>"
				},
				{
					"type": "file",
					"subtype": "image",
					"label": "Image",
					"className": "",
					"name": "file-1521508861906",
					"src": "https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"
				},
				{
					"type": "textarea",
					"subtype": "tinymce",
					"label": "Text",
					"className": "form-control",
					"name": "textarea-1522309392928",
					"value": "<p>Please enter text here</p>"
				}
			]'
        ]);

        DB::table('content_themes')->insert([
            'name' => 'sun',
            'background' => '#ffffff',
            'json_data'=> '[
				{
					"type": "file",
					"subtype": "image",
					"label": "Image",
					"className": "backpanel",
					"name": "file-1521509165530",
					"kind": "backpanel",
					"src": "https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"
				},
				{
					"type": "textarea",
					"subtype": "tinymce",
					"label": "Text",
					"className": "form-control backpanel-inner",
					"name": "textarea-1521509476090",
					"value": "<h1><span style=\"background-color: #ffffff;\">Please enter text here</span></h1>\n<p><span style=\"color: #ffffff;\">Please enter text here</span></p>\n<h6><span style=\"color: #ffffff;\">Please enter text here</span></h6>",
					"kind": "backpanel-inner"
				},
				{
					"type": "textarea",
					"subtype": "tinymce",
					"label": "Text",
					"className": "form-control",
					"name": "textarea-1521509518202",
					"value": "<p><strong>Please enter text here</strong></p>",
					"kind": "standard"
				}
			]'
        ]);

        DB::table('content_themes')->insert([
            'name' => 'water',
            'background' => '#ffffff',
            'json_data'=> '[
				{
					"type": "file",
					"subtype": "image",
					"label": "Image",
					"className": "fixed",
					"name": "file-1521511347107",
					"kind": "fixed",
					"src": "https://lambda-s3-tac-bucket.s3.us-west-2.amazonaws.com/21477002989449057.png"
				},
				{
					"type": "textarea",
					"subtype": "tinymce",
					"label": "Text",
					"className": "form-control",
					"name": "textarea-1521511375729",
					"value": "<div style=\"background-color: white;\"><h1>Please enter text here</h1>\n<p>By: <span style=\"color: #00ffff;\">Please enter text here</span></p>\n<h6><span style=\"color: #999999;\">Please enter text here</span></h6>\n</div>"
				}
			]'
        ]);

        DB::table('content_themes')->insert([
            'name' => 'blank',
            'background' => '#ffffff',
            'json_data'=> '[]'
        ]);
    }
}
