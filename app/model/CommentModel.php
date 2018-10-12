<?php

/**
 * Created by PhpStorm.
 * User: Filip Březina
 * Date: 11.10.2018
 * Time: 11:15
 */

namespace App\Model;

use Nette\Utils\DateTime;
use Nette\Utils\FileSystem;
use Nette\Utils\Finder;
use Nette\Utils\Strings;

class CommentModel extends BaseModel
{
    public function add($values) {
        if($values['database'] == 'files') {
            $this->saveFile($values);
        } else {
            unset($values['database']);
            $this->db->table('comment')->insert($values);
        }
    }

    public function getComments() {
        return $this->db->table('comment')
            ->order('created DESC')
            ->fetchAll();
    }

    public function saveFile($values) {
        FileSystem::createDir('files');
        $date = new DateTime();
        $values['name'] = Strings::webalize($values['name']);
        $fileName = $date->format('Y-m-d-H-i') . '-' . $values['name']  . '.txt';
        FileSystem::write($fileName, $values['comment']);
        FileSystem::copy($_SERVER['DOCUMENT_ROOT'] . '/' . $fileName, $_SERVER['DOCUMENT_ROOT'] . '/files/' . $fileName);
        FileSystem::delete($_SERVER['DOCUMENT_ROOT'] . '/' . $fileName);
    }

    public function getCommentsFromFiles() {
        $arr = [];
        foreach(Finder::findFiles('*.txt')->from($_SERVER['DOCUMENT_ROOT'] . '/files') as $key => $value) {
            $path = explode('files', $key);
            $nameTxt = explode('-', $path[1]);
            $name = "";
            foreach ($nameTxt as $k => $v) {
                if($k > 4) {
                    $name .= $v . " ";
                }
            }
            $n = explode('.txt', $name);
            $arr[Strings::firstUpper($n[0])] = FileSystem::read($key);
        }

        return array_reverse($arr);
    }

}