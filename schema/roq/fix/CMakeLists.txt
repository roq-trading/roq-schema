set(TARGET_NAME ${PROJECT_NAME}-roq-fix)

set(TARGET_DIR ${SCHEMA_DIR}/roq/fix)

set(SOURCES
    AccountType.json
    BusinessRejectReason.json
    CommType.json
    CxlRejReason.json
    CxlRejResponseTo.json
    EncryptMethod.json
    ExecTransType.json
    ExecType.json
    Field.json
    FillLiquidityInd.json
    HandlInst.json
    IOITransType.json
    LastLiquidityInd.json
    MassCancelRejectReason.json
    MassCancelRequestType.json
    MassCancelResponse.json
    MassStatusReqType.json
    MDEntryType.json
    MDReqRejReason.json
    MDUpdateAction.json
    MDUpdateType.json
    MiscFeeType.json
    MsgType.json
    OrdRejReason.json
    OrdStatus.json
    OrdType.json
    PartyIDSource.json
    PartyRole.json
    PosAmtType.json
    PositionEffect.json
    PosReqResult.json
    PosReqStatus.json
    PosReqType.json
    PosType.json
    PutOrCall.json
    QtyType.json
    QuoteCancelType.json
    QuoteRejectReason.json
    QuoteResponseLevel.json
    QuoteStatus.json
    QuoteType.json
    SecurityListRequestType.json
    SecurityRequestResult.json
    SecurityRequestType.json
    SecurityResponseType.json
    SecurityTradingStatus.json
    SessionRejectReason.json
    SettlPriceType.json
    SettlType.json
    Side.json
    SubscriptionRequestType.json
    TimeInForce.json
    TradeReportRejectReason.json
    TradeRequestResult.json
    TradeRequestStatus.json
    TradeRequestType.json
    TradSesStatus.json
    TradSesStatusRejReason.json
    UserRequestType.json
    UserStatus.json)

install(FILES ${SOURCES} DESTINATION ${TARGET_DIR})
