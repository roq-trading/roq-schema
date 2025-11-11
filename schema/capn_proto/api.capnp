@0x84833d5ee308c03e;

using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("roq::schema::capn_proto");

enum Side {
  undefined @0;
  buy @1;
  sell @2;
}

struct DownloadBegin {
  account @0 :Text;
}

struct DownloadEnd {
  account @0 :Text;
  maxOrderId @1 :UInt64 = 0;
}

struct GatewaySettings {
  supports @0 :UInt64 = 0; # Mask<SupportType>
  mbpMaxDepth @1 :UInt16 = 0;
  mbpTickSizeMultiplier @2 :Float64;
  mbpMinTradeVolMultiplier @3 :Float64;
  mbpAllowRemoveNonExisting @4 :Bool = false;
  mbpAllowPriceInversion @5 :Bool = false;
  mbpChecksum @6 :Bool = false;
  omsDownloadHasState @7 :Bool = false;
  omsDownloadHasRoutingId @8 :Bool = false;
  # roq::RequestIdType oms_request_id_type = {};     //!< OMS request identifier type
  # roq::Mask<roq::Filter> oms_cancel_all_orders;    //!< Supported filters for CancelAllOrders
  # roq::Interval ts_interval = {};                  //!< Time-series interval
  # uint16_t ts_max_history = {};                    //!< Time-series max history (bars)
}

struct SourceInfo {
  seqno @0 :UInt64;
  sendTimeUtc @1 :UInt64;
  createTimeUtc @2 :UInt64;
  sendTime @3 :UInt64;
  createTime @4 :UInt64;
}

struct Message {
  sourceInfo @0 :SourceInfo;
  value :union {
    downloadBegin @1 :DownloadBegin;
    downloadEnd @2 :DownloadEnd;
    gatewaySettings @3 :GatewaySettings;
  }
}
