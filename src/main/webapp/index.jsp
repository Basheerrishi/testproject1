<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Rishi weds Sweety - RSVP</title>
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

        /* Top navigation with title + tabs */
        .top-bar {
            background: rgba(0, 0, 0, 0.25);
            backdrop-filter: blur(8px);
            color: #fff;
            padding: 10px 20px;
        }

        .top-bar-inner {
            max-width: 1100px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }

        .site-title {
            font-size: 1.4rem;
            font-weight: 700;
            letter-spacing: 0.04em;
            text-transform: uppercase;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .site-title span {
            font-size: 1.2rem;
        }

        .nav-links {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .nav-link {
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 999px;
            border: 1px solid rgba(255, 255, 255, 0.5);
            color: #fff;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.18);
        }

        .header {
            text-align: center;
            padding: 24px 20px 10px;
            color: #fff;
        }

        .header h1 {
            margin: 0 0 6px;
            font-size: 2.3rem;
            text-shadow: 0 3px 6px rgba(0,0,0,0.25);
        }

        .header h2 {
            margin: 0 0 12px;
            font-size: 1.35rem;
        }

        .header p {
            margin-top: 4px;
            font-size: 1.05rem;
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

        /* Menu section */
        .menu-section {
            max-width: 1100px;
            margin: 0 auto 40px;
            padding: 0 20px 40px;
        }

        .menu-card {
            background-color: rgba(255,255,255,0.97);
            border-radius: 16px;
            padding: 22px 24px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.18);
        }

        .menu-title {
            font-size: 1.6rem;
            margin-top: 0;
            margin-bottom: 4px;
            color: #4a148c;
        }

        .menu-subtitle {
            margin-top: 0;
            margin-bottom: 18px;
            color: #6a1b9a;
        }

        .menu-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
            gap: 18px;
        }

        .menu-column {
            padding: 14px 16px;
            border-radius: 12px;
        }

        .menu-column.veg {
            background: linear-gradient(135deg, #e8f5e9, #c8e6c9);
        }

        .menu-column.non-veg {
            background: linear-gradient(135deg, #ffebee, #ffcdd2);
        }

        .menu-column h3 {
            margin-top: 0;
            margin-bottom: 8px;
        }

        .menu-tags {
            font-size: 0.8rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.07em;
        }

        .menu-column ul {
            margin: 8px 0 0;
            padding-left: 18px;
            font-size: 0.95rem;
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

            .top-bar-inner {
                flex-direction: column;
                align-items: flex-start;
            }
        }
    </style>
</head>
<body>
<div class="page-wrapper">

    <!-- Top nav with title + tabs -->
    <div class="top-bar">
        <div class="top-bar-inner">
            <div class="site-title">
                <span>💍</span> Rishi weds Sweety
            </div>
            <nav class="nav-links">
                <a class="nav-link" href="#rsvp">RSVP</a>
                <a class="nav-link" href="#menu">Menu</a>
            </nav>
        </div>
    </div>

    <header class="header">
        <h1>Rishi weds Sweety</h1>
        <h2>Anniversary Celebration & Dinner</h2>
        <p>Please confirm your presence and check out the menu below.</p>
    </header>

    <main>
        <!-- RSVP + Posters + Car -->
        <div class="content">

            <!-- Left: RSVP form -->
            <section class="card" id="rsvp">
                <h2>Your RSVP Details</h2>
                <p>Please fill this in so we can plan the food and seating comfortably.</p>

                <form action="rsvp" method="post">
                    <label for="name">Your Name</label>
                    <input type="text" id="name" name="name"
                           placeholder="e.g. Rahul Sharma" required />

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
                            <div class="poster-caption">Music, lights & lifetime memories.</div>
                        </div>
                        <div class="poster-card">
                            <img src="images/poster3.jpg" alt="Wedding poster 3"/>
                            <div class="poster-caption">Your presence is our favourite gift.</div>
                        </div>
                    </div>
                </div>

                <div class="car-section">
                    <div class="car-header">Wedding Ride – Hop In! 🚗💒</div>
                    <div class="car-wrapper">
                        <div class="car-emoji">👰🤵</div>
                        <div class="car-text">
                            Rishi & Sweety are driving into a new year of love and togetherness.
                            Come join the celebration, enjoy the food, and make the ride memorable!
                        </div>
                    </div>
                    <!-- Optional image of wedding car -->
                    <img src="images/wedding-car.png" alt="Wedding car with bride and groom" class="car-image"/>
                </div>
            </section>
        </div>

        <!-- Menu section: Veg & Non-Veg items -->
        <section class="menu-section" id="menu">
            <div class="menu-card">
                <h2 class="menu-title">Wedding Dinner Menu</h2>
                <p class="menu-subtitle">Here’s what’s cooking for the big night – separate counters for Veg and Non-Veg.</p>

                <div class="menu-grid">
                    <!-- Veg column -->
                    <div class="menu-column veg">
                        <div class="menu-tags">Veg Specials 🌿</div>
                        <h3>Vegetarian Delights</h3>
                        <ul>
                            <li>Paneer Tikka / Paneer Butter Masala</li>
                            <li>Veg Manchurian / Hakka Noodles</li>
                            <li>Dal Makhani & Jeera Rice</li>
                            <li>Mixed Veg Curry / Aloo Gobi</li>
                            <li>Assorted Indian Breads (Butter Naan, Roti)</li>
                            <li>Green Salad & Raita</li>
                            <li>Gulab Jamun / Ice Cream</li>
                        </ul>
                    </div>

                    <!-- Non-Veg column -->
                    <div class="menu-column non-veg">
                        <div class="menu-tags">Non-Veg Specials 🍗</div>
                        <h3>Non-Vegetarian Treats</h3>
                        <ul>
                            <li>Chicken Tandoori / Chicken Tikka</li>
                            <li>Butter Chicken / Chicken Curry</li>
                            <li>Egg Curry (optional)</li>
                            <li>Flavoured Rice / Biryani</li>
                            <li>Fish Fry (subject to availability)</li>
                            <li>Assorted Indian Breads</li>
                            <li>Desserts & Sweets Counter</li>
                        </ul>
                    </div>
                </div>

                <p style="margin-top:16px;font-size:0.95rem;">
                    Guests can choose their preference while filling the RSVP form, so we can plan
                    Veg and Non-Veg quantities accurately.
                </p>
            </div>
        </section>
    </main>

    <footer class="footer">
        Rishi weds Sweety • Looking forward to celebrating with you ❤️
    </footer>
</div>
</body>
</html>
