<?php
/**
 * Created by PhpStorm.
 * User: Nhut Tran
 * Date: 10/1/2015 8:49 AM
 */

namespace site\vendor\vsoft\news\widgets;


class NewsWiget
{
    public $c_id, $s_id, $view;

    public function run()
    {
        if($this->c_id > 0){
            if($this->s_id > 0){
                // render to detail page
            }
            else{
                if($this->view === 'list'){
                    // show post list
                }
                else {
                    // show template by catalog id
                }
            }
        }
        else return $this->render('');
    }
}