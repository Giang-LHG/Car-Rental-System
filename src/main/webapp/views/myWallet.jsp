<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/4/2024
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Wallet</title>
    <link rel="stylesheet" href="../resources/css/wallet.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main>
    <h2>My Wallet</h2>
    <div class="balance">
        <p>Your current balance:</p>
        <span class="amount">20,000,000 VND</span>
        <button class="withdraw">Withdraw</button>
        <button class="deposit">Deposit</button>
    </div>
    <div class="transactions">
        <h3>Transactions</h3>
        <div class="filters">
            <div class="filter">
                <label for="from">From:</label>
                <input type="date" id="from" name="from" />
            </div>
            <div class="filter">
                <label for="to">To:</label>
                <input type="date" id="to" name="to" />
            </div>
            <button class="search">Search</button>
        </div>
        <table>
            <thead>
            <tr>
                <th>Amount</th>
                <th>Type</th>
                <th>Date Time</th>
                <th>Invoice No.</th>
                <th>Ref. Number</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>+10,000,000 VND</td>
                <td>Top-up</td>
                <td>8/02/2023 13:30</td>
                <td>N/A</td>
                <td>N/A</td>
            </tr>
            <tr>
                <td>-2,000,000</td>
                <td>Withdrawal</td>
                <td>4/02/2023 14:00</td>
                <td>N/A</td>
                <td>N/A</td>
            </tr>
            <tr>
                <td>-11,000,000</td>
                <td>Online Payment</td>
                <td>1/02/2023 11:00</td>
                <td>INV0456-78</td>
                <td>Holden Nova 6.2 2017</td>
            </tr>
            <tr>
                <td>-800,000</td>
                <td>Online Payment</td>
                <td>5/02/2023 13:00</td>
                <td>INV0456-79</td>
                <td>Holden Nova 6.2 2017</td>
            </tr>
            <tr>
                <td>-18,000,000</td>
                <td>Advance deposit</td>
                <td>2/02/2023 13:30</td>
                <td>INV0456-76</td>
                <td>Holden Nova 6.2 2017</td>
            </tr>
            </tbody>
        </table>
        <div class="pagination">
            <span>&#171;</span>
            <span class="active">1</span>
            <span>2</span>
            <span>3</span>
            <span>&#187;</span>
        </div>
    </div>
</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
