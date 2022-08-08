@extends('layouts.dashboard')

{{-- Title --}}
@section('title')
    {{ config('app.name') }} | {{ __('Notifications') }}
@endsection

{{-- Breadcrumb --}}
@section('breadcrumb')
     <h2 class="content-header-title float-left mb-0">{{ __('Admin Dashboard') }}</h2>
    <div class="breadcrumb-wrapper">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{{ route('dashboard') }}">{{ __('Home') }}</a>
            </li>
            <li class="breadcrumb-item active">
                {{ __('Notifications') }}
            </li>
        </ol>
    </div>
@endsection

{{-- Main Content --}}
@section('content')
<div class="row" id="basic-table">
    <div class="col-12 m-auto">
        <div class="card">
            <div class="card-header d-flex">
                <h4 class="card-title">{{ __('All Notifications') }}</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="data_table">
                        <thead>
                            <tr>
                                <th>{{ __('Sl') }}</th>
                                <th>{{ __('Image') }}</th>
                                <th>{{ __('Name') }}</th>
                                <th>{{ __('Notifications') }}</th>
                                <th>{{ __('Status') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($all_notifications as $not)
                            @php
                                $item_slug = App\Models\Item::find($not->type_id);
                                $user_info = App\Models\User::find($not->user_id);
                            @endphp
                            @if ($not->status == 'unseen')
                            <tr class="bg__shade notification_msg_seen" data-id="{{ $not->id }}">
                                <td>{{ $loop->index + 1 }}</td>
                                <td>
                                    <a href="{{ route('user',$user_info->id) }}">
                                        <img style="height:40px;width:40px;border-radius:50%" src="{{ asset('uploads/images/users') }}/{{ $user_info->profile_photo_path }}" alt="Admin picture">
                                    </a>
                                </td>
                                <td><a href="{{ route('user',$user_info->id) }}">{{ $user_info->name }}</a></td>
                                <td><a href="{{ route('item_details', $item_slug->slug) }}">{{ $not->message }}</a></td>
                                <td>{{ ucfirst($not->status) }}</td>
                            </tr>
                            @else
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>
                                    <a href="{{ route('user',$user_info->id) }}">
                                        <img style="height:40px;width:40px;border-radius:50%" src="{{ asset('uploads/images/users') }}/{{ $user_info->profile_photo_path }}" alt="Admin picture">
                                    </a>
                                </td>
                                <td><a href="{{ route('user',$user_info->id) }}">{{ $user_info->name }}</a></td>
                                <td><a href="{{ route('item_details', $item_slug->slug) }}">{{ $not->message }}</a></td>
                                <td>{{ ucfirst($not->status) }}</td>
                            </tr>
                            @endif
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection

@section('js')
<script>
    $(document).ready(function(){
        $(".notification_msg_seen").on("click", function(){
            let notify_id = $(this).attr('data-id')
        //    alert(notify_id)
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url: "{{ route('notification_seen') }}",
                type: "POST",
                data: {
                    notify_id: notify_id,
                },
                success: function (response){
                    // location.reload()
                },
            });
        });
    });
</script>
@endsection

