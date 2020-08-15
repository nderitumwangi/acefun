@if(isset($items))
    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Alcohol</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($items as $item)
                <tr onclick="populateFields({{$item}})" style="cursor: pointer">
                    <td><img src="{{substr(url("/"), 0, strrpos(url("/"), '/'))}}{{ $item->image }}"
                             alt="{{ $item->name }}" height="80" width="80"
                             style="border-radius: 0.275rem;">
                    </td>
                    <td>{{ $item->name }}</td>
                    <td>{{ $item->quantity }} ml</td>
                    <td>{{ $item->alcohol }} % </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endif