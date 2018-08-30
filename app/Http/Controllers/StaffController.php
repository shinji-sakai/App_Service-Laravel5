<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use JWTAuth;
use JWTAuthException;
use App\Staff;

class StaffController extends Controller
{
    public function __construct()
    {
        $this->middleware('jwt.auth');
    }

    public function addStaff(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();
        $body = $request->all();
        $appId = $body['app_id'];
        $email = $body['email'];
        $passcode = $body['passcode'];

        if ($user)
        {
            $body['notification'] = ($body['notification'] == "true" ? 1 : 0);
            if(Staff::where('app_id', $appId)->where('email', $email)->exists()){
                $staffData['status'] = 0;
                $staffData['message'] = "This email has been already.";
            }
            else if(Staff::where('app_id', $appId)->where('passcode', $passcode)->exists()){
                $staffData['status'] = 0;
                $staffData['message'] = "This passcode has been already.";
            }
            else{
                $staffData['status'] = 1;
                $staffData = Staff::create($body);
            }
        }
        else
        {
            $staffData['status'] = 0;
            $staffData['message'] = trans('appmessages.default_error_msg');
        }

        return response()->json($staffData);
    }

    public function fetchAllStaffs(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();
        $body = $request->all();
        $appId = $body['app_id'];

        if ($user)
        {
            $response['data'] = Staff::where('app_id', $appId)->get();
        }
        else
        {
            $response['message'] = trans('appmessages.default_error_msg');
        }

        return response()->json($response);
    }

    public function fetchStaffById(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();
        $body = $request->all();
        
        $editId = $body['id'];

        if($user)
        {
            $response = Staff::find($editId);
            $response['message'] = trans('appmessages.getstaffbyidsuccessfully');
        }
        else {
            $response['message'] = trans('appmessages.default_error_msg');
        }
        return response()->json($response);
    }

    public function updateStaff(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();
        $body = $request->all();
        $appId = $body['appId'];
        $email = $body['email'];
        $passcode = $body['passcode'];
        
        if ($user)
        {
            $editId = $body['id'];
            $body['notification'] = ($body['notification'] == "true" ? 1 : 0);
            if(Staff::where('app_id', $appId)->where('email', $email)
                ->where('id', '!=', $editId)->exists()){
                $staffData['status'] = 0;
                $staffData['message'] = "This email has been already.";
            }
            else if(Staff::where('app_id', $appId)->where('passcode', $passcode)
                ->where('id', '!=', $editId)->exists()){
                $staffData['status'] = 0;
                $staffData['message'] = "This passcode has been already.";
            }
            else{
                $staffData['status'] = 1;
                $staffData['data'] = Staff::find($editId)->update($body);
            }
        }
        else
        {
            $staffData['status'] = 0;
            $staffData['message'] = trans('appmessages.default_error_msg');
        }

        return response()->json($staffData);
    }

    public function deleteStaff(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();
        $body = $request->all();
        $appId = $body['app_id'];
        $deleteId = $body['id'];

        if ($user)
        {
            Staff::destroy($deleteId);
            $response['data'] = Staff::where('app_id', $appId)->get();
        }
        else
        {
            $response['message'] = trans('appmessages.default_error_msg');
        }

        return response()->json($response);
    }
}