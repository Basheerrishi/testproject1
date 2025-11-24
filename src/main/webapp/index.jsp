<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Anniversary Party RSVP</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #ff9a9e 0%, #fecfef 30%, #f6d365 60%, #fda085 100%);
            color: #333;
        }

        .page-wrapper {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .header {
            text-align: center;
            padding: 30px 20px 10px;
            color: #fff;
        }

        .header h1 {
            margin: 0;
            font-size: 2.4rem;
            text-shadow: 0 3px 6px rgba(0,0,0,0.2);
        }

        .header p {
            margin-top: 8px;
            font-size: 1.1rem;
        }

        .content {
            max-width: 1100px;
            margin: 0 auto 40px;
            padding: 0 20px 40px;
            display: grid;
            grid-template-columns: minmax(0, 1.3fr) minmax(0, 1fr);
            gap: 24px;
        }

        /* RSVP card */
        .card {
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 14px;
            padding: 24px 24px 28px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.12);
            backdrop-filter: blur(6px);
        }

        .card h2 {
            margin-top: 0;
            color: #c2185b;
        }

        label {
            display: block;
            margin-top: 12px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px 12px;
            margin-top: 4px;
            border-radius: 8px;
            border: 1px solid #ddd;
            font-size: 0.95rem;
        }

        input:focus,
        select:focus {
            outline: none;
            border-color: #ff6f61;
            box-shadow: 0 0 0 2px rgba(255,111,97,0.25);
        }

        button {
            margin-top: 20px;
            padding: 10px 22px;
            border: none;
            background: linear-gradient(135deg, #ff6f61, #f06292);
            color: white;
            cursor: pointer;
            border-radius: 999px;
            font-size: 1rem;
            font-weight: 600;
            letter-spacing: 0.03em;
            box-shadow: 0 6px 18px rgba(255,111,97,0.4);
            transition: transform 0.15s ease, box-shadow 0.15s ease;
        }

        button:hover {
            transform: translateY(-1px);
            box-shadow: 0 10px 24px rgba(255,111,97,0.6);
        }

        button:active {
            transform: translateY(0);
            box-shadow: 0 4px 12px rgba(255,111,97,0.5);
        }

        /* Posters section */
        .posters-section {
            margin-top: 10px;
        }

        .posters-title {
            font-weight: 700;
            margin-bottom: 10px;
            color: #6a1b9a;
        }

        .posters-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
            gap: 10px;
        }

        .poster-card {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 6px 15px rgba(0,0,0,0.15);
        }

        .poster-card img {
            width: 100%;
            height: 120px;
            object-fit: cover;
            display: block;
        }

        .poster-card .poster-caption {
            padding: 8px 10px;
            font-size: 0.85rem;
            text-align: center;
            color: #555;
        }

        /* Wedding car visual */
        .car-section {
            margin-top: 18px;
            background: linear-gradient(135deg, #ffecb3, #ffcdd2);
            border-radius: 18px;
            padding: 16px 18px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            position: relative;
            overflow: hidden;
        }

        .car-header {
            font-weight: 700;
            margin-bottom: 8px;
            color: #ad1457;
        }

        .car-wrapper {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .car-emoji {
            font-size: 2.4rem;
        }

        .car-text {
            font-size: 0.95rem;
        }

        .car-image {
            position: absolute;
            right: -10px;
            bottom: -8px;
            width: 160px;
            opacity: 0.9;
            pointer-events: none;
        }

        .footer {
            text-align: center;
            color: #fff;
            font-size: 0.9rem;
            padding: 10px 0 16px;
        }

        @media (max-width: 850px) {
            .content {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
<div class="page-wrapper">
    <header class="header">
        <h1>💍 Anniversary Celebration RSVP 💍</h1>
        <p>We’re tying another knot of memories. Please confirm your presence and dinner preference.</p>
    </header>

    <main class="content">
        <!-- Left: RSVP form -->
        <section class="card">
            <h2>Your RSVP Details</h2>
            <p>Please fill this in so we can plan the food and seating comfortably.</p>

            <form action="rsvp" method="post">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" placeholder="e.g. Rahul Sharma" required />

                <label for="count">Number of People Attending</label>
                <input type="number" id="count" name="count" min="1" value="1" required />

                <label for="foodPreference">Food Preference</label>
                <select id="foodPreference" name="foodPreference" required>
                    <option value="">-- Select --</option>
                    <option value="VEG">Veg</option>
                    <option value="NON_VEG">Non Veg</option>
                </select>

                <button type="submit">Submit RSVP</button>
            </form>
        </section>

        <!-- Right: Posters + Wedding car visual -->
        <section>
            <div class="posters-section">
                <div class="posters-title">Wedding Vibes Posters 🎊</div>
                <div class="posters-grid">
                    <div class="poster-card">
                        <img src="images/poster1.jpg" alt="Wedding poster 1"/>
                        <div class="poster-caption">“Two hearts, one celebration.”</div>
                    </div>
                    <div class="poster-card">
                        <img src="images/poster2.jpg" alt="Wedding poster 2"/>
                        <div class="poster-caption">Join us for music, lights & love.</div>
                    </div>
                    <div class="poster-card">
                        <img src="images/poster3.jpg" alt="Wedding poster 3"/>
                        <div class="poster-caption">Your presence is the best gift.</div>
                    </div>
                </div>
            </div>

            <div class="car-section">
                <div class="car-header">Wedding Ride – Hop In! 🚗💒</div>
                <div class="car-wrapper">
                    <div class="car-emoji">👰🤵</div>
                    <div class="car-text">
                        Imagine the bride and groom cruising in, with friends and family cheering,
                        flowers flying in the air, and you right there with us!  
                        RSVP now and be part of our journey.
                    </div>
                </div>
                <!-- Optional image of wedding car -->
                <img src="images/wedding-car.png" alt="Wedding car with bride and groom" class="car-image"/>
            </div>
        </section>
    </main>

    <footer class="footer">
        With love, waiting to celebrate this special day with you ❤️
    </footer>
</div>
</body>
</html>
