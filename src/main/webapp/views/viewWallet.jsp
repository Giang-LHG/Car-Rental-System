<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rent a car today!</title>
    <jsp:include page="head.html"></jsp:include>
    <style>
        /* Reset default margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            line-height: 1.6;
        }

        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 0 20px;
        }



        /* Main content styles */
        .main {
            padding: 20px;
        }

        .wallet {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
        }

        .balance {
            margin-bottom: 20px;
        }

        .balance p {
            margin-bottom: 10px;
        }

        .amount {
            font-size: 24px;
            font-weight: bold;
        }

        .actions button {
            padding: 8px 16px;
            margin-right: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .withdraw {
            background-color: #f7c94b;
            color: #333;
        }

        .topup {
            background-color: #4caf50;
            color: #fff;
        }

        .transactions {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
        }

        .transaction-filter {
            margin-bottom: 20px;
        }

        .transaction-filter label {
            margin-right: 10px;
        }

        .transaction-filter input[type="date"] {
            margin-right: 10px;
        }

        .search {
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #333;
            color: #fff;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .pagination {
            margin-top: 20px;
            text-align: center;
        }

        .pagination a {
            display: inline-block;
            padding: 8px 16px;
            margin-right: 5px;
            text-decoration: none;
            color: #333;
            border: 1px solid #ccc;
        }

        .pagination a.active {
            background-color: #333;
            color: #fff;
            border-color: #333;
        }



    </style>
</head>
<body>
<header>
    <section class="header bg-secondary border-bottom">
        <!-- why us -->
        <div class="container py-3">
            <div class="row">
                <div class="col-md-7">
                    <a href="#" class="text-decoration-none">
                        <i class="fa-solid fa-car text-light fs-4"></i>
                        <strong class="text-light ms-2 fs-3">Rent a car today!</strong>
                    </a>
                </div>
                <div class="col-md-2 border-end border-start pt-2">
                    <a href="#" class="text-decoration-none">
                        <strong class="text-light">ABOUT US</strong>
                    </a>
                </div>
                <div class="col-md-3 pt-2">
                    <div class="row">
                        <div class="col">
                            <a href="#" class="text-decoration-none">
                                <i class="fa-solid fa-user text-light"></i>
                                <strong class="text-light ms-1">SIGN UP</strong>
                            </a>
                        </div>
                        <div class="col border-start">
                            <a href="#" class="text-decoration-none">
                                <strong class="text-light">LOG IN</strong>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- What people say -->
        <div class="container bg-secondary-subtle"></div>
    </section>
</header>

<main class="container">
    <section class="wallet">
        <h1>My Wallet</h1>
        <div class="balance">
            <p>Your current balance:</p>
            <p class="amount">20,000,000 VND</p>
            <div class="actions">
                <button class="withdraw">Withdraw</button>
                <button class="topup">Top-up</button>
            </div>
        </div>
    </section>

    <section class="transactions">
        <h2>Transactions</h2>
        <div class="transaction-filter">
            <label for="from">From:</label>
            <input type="date" id="from" name="from">
            <label for="to">To:</label>
            <input type="date" id="to" name="to">
            <button class="search">Search</button>
        </div>
        <table>
            <thead>
            <tr>
                <th>No</th>
                <th>Date</th>
                <th>Type</th>
                <th>Amount</th>
                <th>Car Name</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>15/02/2023 18:00</td>
                <td>Petrol top-up</td>
                <td>500,000 VND</td>
                <td></td>
            </tr>
            <tr>
                <td>2</td>
                <td>12/02/2023 18:00</td>
                <td>Top-up</td>
                <td>20,000,000 VND</td>
                <td></td>
            </tr>
            <tr>
                <td>3</td>
                <td>12/02/2023 18:00</td>
                <td>Car Rental</td>
                <td>-1,800,000</td>
                <td>Nissan Navara El 2017</td>
            </tr>
            <tr>
                <td>4</td>
                <td>12/02/2023 18:00</td>
                <td>Software Final payment</td>
                <td>-1,000,000</td>
                <td>Nissan Navara El 2017</td>
            </tr>
            <tr>
                <td>5</td>
                <td>12/02/2023 18:00</td>
                <td>Software Final payment</td>
                <td>-600,000</td>
                <td>Nissan Navara El 2017</td>
            </tr>
            <!-- Add 5 more transactions here -->
            </tbody>
        </table>
    </section>

    <div class="pagination">
        <a href="#">&laquo;</a>
        <a href="#" class="active">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">&raquo;</a>
    </div>
</main>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>