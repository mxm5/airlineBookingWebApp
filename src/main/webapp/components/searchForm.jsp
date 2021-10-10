<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form class="container" action="index.jsp" method="get">
    <div class="form-group">
        <label for="exampleInputEmail1">From</label>
        <br/>
        <input
                type="text"
                class="form-control p"
                size="55"
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                placeholder="Enter home "
                name="home"
        />
        <br/>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">To</label>
        <br/>
        <input
                type="text"
                class="form-control p"
                size="55"
                id="exampleInputPassword1"
                placeholder="Enter destination"
                name="destination"
        />
    </div>
    <button type="submit" class="btn btn-primary p">Submit</button>
</form>
