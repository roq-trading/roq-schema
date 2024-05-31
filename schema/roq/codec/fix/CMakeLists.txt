set(TARGET_NAME ${PROJECT_NAME}-roq-codec-fix)

set(TARGET_DIR ${SCHEMA_DIR}/roq/codec/fix)

set(SOURCES
    BusinessMessageReject.json
    ExecutionReport.json
    Heartbeat.json
    InstrmtMDReq.json
    Logon.json
    Logout.json
    MarketDataIncrementalRefresh.json
    MarketDataRequest.json
    MarketDataRequestReject.json
    MarketDataSnapshotFullRefresh.json
    MDFull.json
    MDInc.json
    MDReq.json
    NewOrderSingle.json
    OrderCancelReject.json
    OrderCancelReplaceRequest.json
    OrderCancelRequest.json
    OrderMassCancelReport.json
    OrderMassCancelRequest.json
    OrderMassStatusRequest.json
    OrderStatusRequest.json
    Party.json
    PositionAmountData.json
    PositionQty.json
    PositionReport.json
    Reject.json
    RequestForPositionsAck.json
    RequestForPositions.json
    ResendRequest.json
    SecListGrp.json
    SecurityDefinition.json
    SecurityDefinitionRequest.json
    SecurityList.json
    SecurityListRequest.json
    SecurityStatus.json
    SecurityStatusRequest.json
    SequenceReset.json
    TestRequest.json
    TradeCaptureReport.json
    TradeCaptureReportRequestAck.json
    TradeCaptureReportRequest.json
    TradingSession.json
    TradingSessionStatus.json
    TradingSessionStatusRequest.json
    TrdCapRptSide.json
    UserRequest.json
    UserResponse.json)

install(FILES ${SOURCES} DESTINATION ${TARGET_DIR})
