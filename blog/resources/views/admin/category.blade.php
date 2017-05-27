@component('admin.home')
@slot('title')
Admin-category
@endslot

@section('mainContent')
<div class="table-responsive">          
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>Title</th>
			</tr>
		</thead>
		<tbody>
			@foreach($categories as $category)
			<tr>
				<td>{{ $category->id }}</td>
				<td>{{ $category->title }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	{!! $categories->links() !!}
	
</div>
@endsection

@endcomponent

