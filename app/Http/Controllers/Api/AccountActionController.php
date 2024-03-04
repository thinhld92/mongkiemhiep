<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\LogAccountHabitus;
use Illuminate\Http\Request;

class AccountActionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return 'All User';
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *  1: playerinder
     *  2: cAccname
     *  3: GameName
     *  4: Coin - Expoint
     *  5: IP Address
     * 
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    public function store(Request $request)
    {
        $data = $request->all();
        $logtime = date('Y-m-d H:i:s');
        $all_habits = json_decode($data['data'], true);
        $listBlackAccount = [];
        foreach ($all_habits as $habit) {
            $cAccName = trim($habit[2]);
            $coin = (int) trim($habit[4]);
            $coinchange = 0;
            if ($cAccName) {
                $currentHabit = LogAccountHabitus::where('cAccName', $cAccName)->latest()->first();
                if ($currentHabit) {
                    $coinchange = $coin - $currentHabit->coin;
                    if ($currentHabit->coin >= 0 && $coin < 0) {
                        $blackAcc = [
                            "cAccName" => $cAccName,
                            "coinChange" => $coinchange,
                        ];
                        $listBlackAccount[] = $blackAcc;
                    }
                }
            }
            $dataCreateLogHabits = [
                "playerindex" => trim($habit[1]),
                "cAccName" => $cAccName,
                "gamename" => trim($habit[3]),
                "coin" => $coin,
                "coinchange" => $coinchange,
                "ip" => trim($habit[5]),
                "logtime" => $logtime
            ];
            LogAccountHabitus::create($dataCreateLogHabits);
        }

        // check black list Acc
        $listWaringAcc = [];
        foreach ($listBlackAccount as $acc) {
            $warningAcc = LogAccountHabitus::where('coinchange', abs($acc['coinChange']))
                                    ->where('logtime', $logtime)
                                    ->lastest()
                                    ->first()
                                    ;
            $listWaringAcc[] = $warningAcc;
        }
        return $listWaringAcc;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return "User: " . $id;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
