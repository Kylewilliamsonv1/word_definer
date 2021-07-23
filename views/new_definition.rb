<h1>Create a new definition</h1>

<form action="/definition/<%= @definition.id %>" method="post">
  <label name="description">add your definition</label>
  <input type="text" name="description" class="form-control">
  <button type="submit" class="btn">Post message'</button>
</form>

<a href="/word/definitions">Go back to definitions</a>
