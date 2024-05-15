CREATE TABLE presto_benchmarks.operator_types
(
    `presto_op_type`      varchar(255) NOT NULL,
    `prestissimo_op_type` varchar(255) NOT NULL,
    `op_category`         varchar(255) NOT NULL,
    PRIMARY KEY (`presto_op_type`, `prestissimo_op_type`, `op_category`),
    KEY `presto_op_type_index` (`presto_op_type`),
    KEY `prestissimo_op_type_index` (`prestissimo_op_type`),
    KEY `op_category_index` (`op_category`)
)
    ENGINE = InnoDB
             DEFAULT CHARSET = utf8mb4
             COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO presto_benchmarks.operator_types
VALUES ('AggregationOperator', 'Aggregation', 'Aggregation'),
       ('AssignUniqueIdOperator', 'AssignUniqueId', 'Aggregation'),
       ('EnforceSingleRowOperator', 'EnforceSingleRow', 'exchange'),
       ('ExchangeOperator', 'ExchangeOperator', 'exchange'),
       ('FilterAndProjectOperator', 'FilterProject', 'FilterProject'),
       ('GroupIdOperator', 'GroupId', 'Aggregation'),
       ('HashAggregationOperator', 'Aggregation', 'Aggregation'),
       ('HashBuilderOperator', 'HashBuild', 'Join'),
       ('HashSemiJoinOperator', 'HashProbe', 'Join'),
       ('LimitOperator', 'Limit', 'OrderAndLimit'),
       ('LocalExchangeSinkOperator', 'LocalPartition', 'exchange'),
       ('LocalExchangeSinkOperator', 'CallbackSink', 'exchange'),
       ('LocalExchangeSourceOperator', 'LocalExchange', 'exchange'),
       ('LocalMergeSourceOperator', 'LocalMerge', 'exchange'),
       ('LookupJoinOperator', 'HashProbe', 'Join'),
       ('LookupOuterOperator', 'HashProbe', 'Join'),
       ('MarkDistinctOperator', 'MarkDistinct', 'Aggregation'),
       ('MergeOperator', 'MergeOperator', 'exchange'),
       ('NestedLoopBuildOperator', 'NestedLoopJoinBuild', 'Join'),
       ('NestedLoopJoinOperator', 'NestedLoopJoinProbe', 'Join'),
       ('OptimizedPartitionedOutputOperator', 'PartitionedOutput', 'exchange'),
       ('OrderByOperator', 'OrderBy', 'OrderAndLimit'),
       ('ScanFilterAndProjectOperator', 'TableScanOperator', 'Scan'),
       ('SetBuilderOperator', 'HashBuild', 'Join'),
       ('StreamingAggregationOperator', 'Aggregation', 'Aggregation'),
       ('TableScanOperator', 'TableScanOperator', 'Scan'),
       ('TaskOutputOperator', 'PartitionedOutput', 'exchange'),
       ('TopNOperator', 'TopN', 'OrderAndLimit'),
       ('WindowOperator', 'Window', 'Aggregation');
