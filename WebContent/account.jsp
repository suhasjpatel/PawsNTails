<jsp:useBean id="account" scope="session" class="pawsntails.models.Account"/>
<div class="form-group">
    <label class="control-label col-sm-2" for="firstName">First Name:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="firstName" name="firstName" maxlength="40" required
               placeholder="Enter First Name" value="${account.firstName}">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="lastName">Last Name:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="lastName" name="lastName" maxlength="40" required
               placeholder="Enter Last Name" value="${account.lastName}">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
        <input type="email" class="form-control" id="email" name="email" maxlength="40" required
               placeholder="Enter Email" value="${account.email}">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="password">Password:</label>
    <div class="col-sm-10">
        <input type="password" class="form-control" id="password" name="password" maxlength="40" required
               placeholder="Enter Password" value="${account.password}">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="address">Address Line 1:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="address" name="address" maxlength="40" required
               placeholder="Enter Address Line #1" value="${account.address}">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="address2">Address Line 2:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="address2" name="address2" maxlength="40"
               placeholder="Enter Address Line #2" value="${account.address2}">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="city">City/Town:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="city" name="city" maxlength="40" required
               placeholder="Enter City" value="${account.city}">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="state">State:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="state" name="state" maxlength="2" required
               placeholder="Enter State" value="${account.state}">
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="zipcode">ZIP Code:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="zipcode" name="zipcode" maxlength="5" required
               placeholder="Enter Zip Code" value="${account.zip}">
    </div>
</div>