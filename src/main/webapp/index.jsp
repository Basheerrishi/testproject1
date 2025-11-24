<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Anniversary Party RSVP</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        h1 { color: #333; }
        form { max-width: 400px; }
        label { display: block; margin-top: 10px; }
        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 8px;
            margin-top: 4px;
            box-sizing: border-box;
        }
        button {
            margin-top: 20px;
            padding: 10px 16px;
            border: none;
            background-color: #007bff;
            color: white;
            cursor: pointer;
            border-radius: 4px;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>Anniversary Party RSVP</h1>
<p>Please fill out the form below to confirm your attendance.</p>

<form action="rsvp" method="post">
    <label for="name">Your Name</label>
    <input type="text" id="name" name="name" required />

    <label for="count">Number of People Attending</label>
    <input type="number" id="count" name="count" min="1" required />

    <label for="foodPreference">Food Preference</label>
    <select id="foodPreference" name="foodPreference" required>
        <option value="">-- Select --</option>
        <option value="VEG">Veg</option>
        <option value="NON_VEG">Non Veg</option>
    </select>

    <button type="submit">Submit RSVP</button>
</form>

</body>
</html>
