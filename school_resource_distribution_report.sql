school_resource_distribution_report.sql
/*
    Project:
    School Resource Distribution Report

    Purpose:
    Summarize educational resources distributed to schools.

    Expected Table:

    ResourceDistribution
    --------------------
    SchoolName
    ResourceCategory
    QuantityDistributed
    DistributionDate
*/

SELECT
    SchoolName,
    ResourceCategory,

    SUM(QuantityDistributed) AS TotalItemsDistributed,

    COUNT(*) AS DistributionEvents

FROM ResourceDistribution

GROUP BY
    SchoolName,
    ResourceCategory

ORDER BY
    TotalItemsDistributed DESC,
    SchoolName ASC;
