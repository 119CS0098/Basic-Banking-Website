
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Revansh Yadav', 'Harsh Wardhan', 500, '2021-05-04 16:24:32'),
(2, 'sarina', 'Saloni', 50, '2021-05-04 21:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Revansh Yadav', 'revansh@gmail.com', 49500),
(2, 'Harsh Wardhan', 'harsh@gmail.com', 30500),
(3, 'Salmon Heverson', 'salmon678@gmail.com', 40000),
(4, 'Preeta Gupta', 'preetagupta@gmail.com', 50000),
(5, 'Karan Jain', 'karanjain@gmail.com', 40000),
(6, 'Rahul Kapoor', 'rahul@gmail.com', 30000),
(7, 'Krishna Kumar', 'krishna@gmail.com', 50000),
(8, 'Manoj Tiwari', 'manoj787@gmail.com', 40000),
(9, 'Dev Patel', 'devpatel@gmail.com', 30000),
(10, 'Manisha Kumari', 'manisha@gmail.com', 50000),
(11, 'sarina', 'bs@gmail.com', 29950),
(12, 'Saloni', 'saloni6@gmail.com', 60050);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;
