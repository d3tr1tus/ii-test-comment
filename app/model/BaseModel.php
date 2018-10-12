<?php
/**
 * Created by PhpStorm.
 * User: Filip Březina
 * Date: 11.10.2018
 * Time: 12:07
 */

namespace App\Model;

use Nette\Database\Context;


class BaseModel
{
    /**
     * @var Context
     */
    public $db;

    public function __construct(Context $db)
    {
        $this->db = $db;
    }
}