<?php

namespace App\Http\Controllers\User\Post;

use App\Http\Controllers\Controller;
use App\Services\PostService;

class BaseController extends Controller
{
    public $service;
    public function __construct(PostService $service)
    {
        $this->service = $service;
    }
}