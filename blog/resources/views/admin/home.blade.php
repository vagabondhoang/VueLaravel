@include('admin.partials.header')
	<div class="page-content">
		<div class="row">
			<div class="col-md-2">
				@include('admin.partials.sidebar')
			</div>
			<div class="col-md-10">
				@yield('mainContent')
			</div>
		</div>
	</div>

@include('admin.partials.footer')	