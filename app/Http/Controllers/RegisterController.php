<?php

namespace App\Http\Controllers;

use App\User;
use Auth;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Twilio\Rest\Client;

class RegisterController extends Controller
{
    /**
     * @param Request $request
     */
    public function registerRestaurantDelivery(Request $request)
    {
        // dd($request->all());
        $rules = [
            'captcha' => ['required', 'captcha'],
            'first_name' => ['required', 'string', 'max:255'],
            'second_name' => ['required', 'string', 'max:255'],
            'gender' => ['required'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'phone' => ['required', 'string', 'min:8', 'unique:users'],
            'password' => ['required', 'string', 'min:6'],
        ];
        $validator = validator()->make(request()->all(), $rules);
        if ($validator->fails()) {
            // return redirect()->back()->withErrors($validator);
            return redirect()->back()->with(['message' => 'Something went wrong. Please try again.']);
        } else {

            try {

                $user = User::create([
                    'first_name' => $request->first_name,
                    'second_name' => $request->second_name,
                    'email' => $request->email,
                    'phone' => $request->phone,
                    'gender' => $request->gender,
                    'delivery_pin' => strtoupper(str_random(5)),
                    'password' => \Hash::make($request->password),
                    'otp' => rand(10000, 20000),
                    'is_active' => false
                ]);

                if ($request->has('role')) {
                    if ($request->role == 'DELIVERY') {

                        $user->assignRole('Delivery Guy');
                        //return session message...
//                        return redirect()->back()->with(['delivery_register_message' => 'Delivery User Registered', 'success' => 'Delivery User Registered']);
                    }
                    if ($request->role == 'RESOWN') {
                        $user->assignRole('Store Owner');
                        // login and redirect to dashbaord...
//                        Auth::loginUsingId($user->id);
                    }
                }
                // send sms to registered user ...
                $this->sendOTP($user);

                return redirect('/auth/verify')->with(['user' => $user]);


                return redirect()->back()->with(['success' => 'User Created']);

            } catch (\Illuminate\Database\QueryException $qe) {
//                Log::error($qe);
                return redirect()->back()->with(['message' => 'Something went wrong. Please try again.']);
            } catch (Exception $e) {
//                Log::error($e);
                return redirect()->back()->with(['message' => 'Something went wrong. Please try again.']);
            } catch (\Throwable $th) {
//                Log::error($this);
                return redirect()->back()->with(['message' => 'Something went wrong. Please try again.']);
            }
        }
    }

    public function verifyIndex()
    {
        return view('auth.verify');
    }

    public function verify(Request $request)
    {
        $code = $request->get('code');
        $email = $request->get('email');

        $user = User::where('email', $email)->first();

        $otp = $user->otp;

        if ($otp == $code) {
            $user->is_active = true;
            $user->update();
            Auth::loginUsingId($user->id);
        } else {
            return redirect()->back()->with(['message' => 'The code provided does not match']);
        }

        return redirect('auth/login')->with(['success' => 'Account verified successfully.']);

    }

    public function sendOTP(User $user)
    {
//        $client = new Client();
        // Your Account SID and Auth Token from twilio.com/console
        $account_sid = 'AC38d85a15f5af1bace55ff4f81724ed87';
        $auth_token = 'b8fbaa7a78b46bcbb55df34f574264a9';
        $twilio_number = "+12528811485";

        $client = new Client($account_sid, $auth_token);

        return $client->messages->create(
        // Where to send a text message (your cell phone?)
            '+' . $user->phone,
            array(
                'from' => $twilio_number,
                'body' => 'Your verification code is ' . $user->otp
            )
        );

    }
}
