
--1. ดูหน้าตาข้อมูลทั้งหมดในตาราง
select *
from insurance_data;
-- 2. สกัดรายชื่อลูกค้าเป้าหมายสำหรับทำ Cross-Selling (ประกันรถยนต์ที่ยัง Active)
SELECT 
    Customer_ID, 
    Province, 
    Premium
FROM insurance_data
WHERE Policy_Type = 'Auto' 
  AND Policy_Status = 'Active';

-- 3. สรุปยอดเบี้ยประกันรับรวม และยอดเคลมรวม
SELECT 
    Policy_Type,
    SUM(Premium) AS Total_Premium,
    SUM(Total_Claim_Amount) AS Total_Claim
FROM insurance_data
GROUP BY Policy_Type
ORDER BY Total_Premium DESC;