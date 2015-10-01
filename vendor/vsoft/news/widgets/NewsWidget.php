<?php
/**
 * Created by PhpStorm.
 * User: Nhut Tran
 * Date: 10/1/2015 8:49 AM
 */

namespace site\vendor\vsoft\news\widgets;


use funson86\cms\models\CmsShow;
use Yii;

class NewsWidget
{
    public $c_id, $s_id, $view;

    public function run()
    {
        if ($this->c_id > 0) {
            if ($this->s_id > 0) {
                // render to detail page
                Yii::$app->response->redirect('/news/detail');
            } else {
                // show post list with catalog_id
                if ($this->view === 'list') {
                    Yii::$app->response->redirect('/news/list');
                } else {
                    // show template by catalog id
                    switch ($this->c_id) {
                        case 4:
                            $show = CmsShow::find()->where('catalog_id > :catalog_id', [':catalog_id' => $this->c_id])
                                ->orderBy([
                                    'id' => SORT_DESC,
                                ])->limit(4)->all();
                            return $this->render('template_2_3', [
                                'show' => $show
                            ]);
                            break;
                        case 5:
                            $show = CmsShow::find()->where('catalog_id > :catalog_id', [':catalog_id' => $this->c_id])
                                ->orderBy([
                                    'id' => SORT_DESC,
                                ])->limit(1)->all();
                            return $this->render('template_1_1', [
                                'show' => $show
                            ]);
                            break;
                        case 6:
                            $show = CmsShow::find()->where('catalog_id > :catalog_id', [':catalog_id' => $this->c_id])
                                ->orderBy([
                                    'id' => SORT_DESC,
                                ])->limit(8)->all();
                            return $this->render('template_1_8', [
                                'show' => $show
                            ]);
                            break;
                        case 7:
//                            $show = CmsShow::find()->where('catalog_id > :catalog_id', [':catalog_id' => $this->c_id])
//                                ->orderBy([
//                                    'id' => SORT_DESC,
//                                ])->limit(3)->all();
//                            return $this->render('template_duan', [
//                                'show' => $show
//                            ]);
                            break;
                        case 8:
                            $show = CmsShow::find()->where('catalog_id > :catalog_id', [':catalog_id' => $this->c_id])->limit(3)->all();
                            return $this->render('template_3_1', [
                                'show' => $show
                            ]);
                            break;
                    }

                }
            }
        } else return '';
    }
}