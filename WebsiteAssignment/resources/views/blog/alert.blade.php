@if(isset($categoryName))
            <div class="alert alert-info">
                <p>Category: {{$categoryName}}</p>
            </div>
           @endif 
            @if($term = request('term'))
            <div class="alert alert-info">
                <p>Search Result for:: {{$term}}</p>
            </div>
            @endif