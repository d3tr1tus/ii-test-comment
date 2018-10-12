<?php

namespace App\Presenters;

use App\Model\CommentModel;
use Nette;
use Nette\Application\UI;
use Tracy\Debugger;


final class HomepagePresenter extends Nette\Application\UI\Presenter
{

    /**
     * @var CommentModel @inject
     */
    public $commentModel;

    public function startup() {
        parent::startup();
    }

    public function renderDefault() {
        $this->template->commentsMysql = $this->commentModel->getComments();
        $this->template->commentsFiles = $this->commentModel->getCommentsFromFiles();
    }

    public function createComponentCommentForm() {
        $form = new UI\Form();

        $form->addText('name', 'Název')
                ->setAttribute('placeholder', 'Název poznámky')
                ->setRequired();

        $editorTypes = ['texy' => 'Texy', 'markdown' => 'Markdown'];
        $form->addRadioList('text_preprocesor', 'Typ editoru', $editorTypes)
                ->setRequired();;

        $dbTypes = ['mysql' => 'MySQL', 'files' => 'Soubory'];
        $form->addRadioList('database', 'Typ uložiště', $dbTypes)
                ->setRequired();

        $form->addTextArea('comment', 'Poznámka')
                ->setAttribute('style', 'min-height: 200px; min-width: 500px;')
                ->setRequired();

        $form->addSubmit('save', 'Uložit');

        $form->onSuccess[] = [$this, 'commentFormDone'];

        return $form;
    }

    public function commentFormDone(UI\Form $form) {
        $values = $form->getValues();
        try {
            $this->commentModel->add($values);
            $this->redirect('default');
        } catch(\PDOException $e) {
            Debugger::log($e);
            $this->flashMessage('Nepodařilo se připojit k databázi. Kontaktujte prosím správce.');
        }
    }


}
