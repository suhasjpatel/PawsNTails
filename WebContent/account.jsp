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
        <select id="state" name="state" class="form-control">
            <option value="AL">Alabama</option>
            <option value="AK">Alaska</option>
            <option value="AZ">Arizona</option>
            <option value="AR">Arkansas</option>
            <option value="CA">California</option>
            <option value="CO">Colorado</option>
            <option value="CT">Connecticut</option>
            <option value="DE">Delaware</option>
            <option value="DC">District Of Columbia</option>
            <option value="FL">Florida</option>
            <option value="GA">Georgia</option>
            <option value="HI">Hawaii</option>
            <option value="ID">Idaho</option>
            <option value="IL">Illinois</option>
            <option value="IN">Indiana</option>
            <option value="IA">Iowa</option>
            <option value="KS">Kansas</option>
            <option value="KY">Kentucky</option>
            <option value="LA">Louisiana</option>
            <option value="ME">Maine</option>
            <option value="MD">Maryland</option>
            <option value="MA">Massachusetts</option>
            <option value="MI">Michigan</option>
            <option value="MN">Minnesota</option>
            <option value="MS">Mississippi</option>
            <option value="MO">Missouri</option>
            <option value="MT">Montana</option>
            <option value="NE">Nebraska</option>
            <option value="NV">Nevada</option>
            <option value="NH">New Hampshire</option>
            <option value="NJ">New Jersey</option>
            <option value="NM">New Mexico</option>
            <option value="NY">New York</option>
            <option value="NC">North Carolina</option>
            <option value="ND">North Dakota</option>
            <option value="OH">Ohio</option>
            <option value="OK">Oklahoma</option>
            <option value="OR">Oregon</option>
            <option value="PA">Pennsylvania</option>
            <option value="RI">Rhode Island</option>
            <option value="SC">South Carolina</option>
            <option value="SD">South Dakota</option>
            <option value="TN">Tennessee</option>
            <option value="TX">Texas</option>
            <option value="UT">Utah</option>
            <option value="VT">Vermont</option>
            <option value="VA">Virginia</option>
            <option value="WA">Washington</option>
            <option value="WV">West Virginia</option>
            <option value="WI">Wisconsin</option>
            <option value="WY">Wyoming</option>
        </select>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="zipcode">ZIP Code:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="zipcode" name="zipcode" maxlength="5" required
               placeholder="Enter Zip Code" value="${account.zip}">
    </div>
</div>