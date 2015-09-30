<?php

use dosamigos\fileupload\FileUploadUI;
use yii\helpers\Html;
use yii\helpers\Url;


/* @var $this yii\web\View */
/* @var $photoModel backend\modules\gallery\models\GalleryPhoto */

$this->title = 'Photos gallery: ' . ' ' . $galleryModel->name;
$this->params['breadcrumbs'][] = ['label' => 'Gallery', 'url' => Url::toRoute('/gallery')];
$this->params['breadcrumbs'][] = ['label' => 'List of galleries', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $galleryModel->name, 'url' => ['photos', 'id' => $galleryModel->id]];
$this->params['breadcrumbs'][] = 'Photos';
?>
<div class="gallery-photos">       
        
    
    <h2><?= Html::encode($this->title) ?></h2>
    
    <?php if(count($galleryModel->photos) > 0): ?>
        <hr>
        <?php echo $this->renderAjax('_photosList', ['photos' => $galleryModel->photos]); ?>        
        <hr>
        <?php 
            $this->registerJs("
                (function($) {    
    
                    $('.gallery-photos').on('click', '.gallery-photo-delete', function() {

                        var url = $(this).data('url');
                        \$imgBlock = $(this).closest('li');
                                                

                        $.ajax({
                            url: url,
                            type: 'POST',
                            success: function() {
                                \$imgBlock.remove();
                            }
                        });
                    });
                })(jQuery);
           ");
        ?>
    <?php else: ?>
    <p><i>No images</i></p>
    <?php endif; ?>        

    <?= FileUploadUI::widget([
        'model' => $photoModel,
        'attribute' => 'file',
        'url' => ['gallery-photo/upload', 'id' => $galleryModel->id],
        'gallery' => false,
    ]) ?>
</div>
