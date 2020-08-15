@extends("admin.layouts.master")
@section("title")
    Verify Account
@endsection
@section("content")
    <style>
        .btn-registerBtn {
            background-color: #ffffff;
            color: #2b2b2b;
            border-radius: 0.175rem;
            box-shadow: 0 1px 6px 1px rgba(0, 0, 0, .05);
            transition: 0.2s linear all !important;
        }

        .btn-registerBtn:hover {
            /*background-color: #fafafa !important;*/
            color: #2b2b2b;
            box-shadow: 0 3px 12px 2px rgba(0, 0, 0, .10) !important;
            transition: 0.2s linear all !important;
        }

        .btn-registerBtn-selected {
            color: #fff;
            background-color: #FF5722;
        }

        .btn-registerBtn-selected:hover {
            color: #fff;
        }

        .delivery-msg {
            background-color: #ffffff;
            color: #2b2b2b;
            border-radius: 0.175rem;
            box-shadow: 0 3px 12px 2px rgba(0, 0, 0, .05);
        }
    </style>

    <form class="registration-form py-5" action="{{ route('post.verify') }}" method="POST"
          style="margin: 0 auto 20px auto;">
        <div class="card mb-0">
            <div class="card-body">
                <div class="text-center mb-3">
                    <i
                            class="icon-user-tie icon-2x text-slate-300 border-slate-300 border-3 rounded-round p-3 mb-3 mt-1"></i>
                    <h5 class="mb-0">Verify your Account</h5>
                    <span class="d-block text-muted">Enter the code we sent to your phone below:</span>
                </div>
                <div class="form-group form-group-feedback form-group-feedback-left">
                    <input type="text" class="form-control" placeholder="Email" name="email"
                           value="{{session('user')?session('user')->email:''}}">
                    <div class="form-control-feedback">
                        <i class="icon-user text-muted"></i>
                    </div>
                </div>
                <div class="form-group form-group-feedback form-group-feedback-left">
                    <input type="number" class="form-control" placeholder="Code sent to your phone" name="code">
                    <div class="form-control-feedback">
                        <i class="icon-lock2 text-muted"></i>
                    </div>
                </div>
                @csrf
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block" style="height: 2.8rem; font-size: 1rem;">
                        Verify Account
                        <i class="icon-circle-right2 ml-2"></i></button>
                </div>
            </div>
        </div>
    </form>
@endsection