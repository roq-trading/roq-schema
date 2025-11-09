@0x84833d5ee308c03e;

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

struct SourceInfo {
  seqno @0 :UInt64;
  sendTimeUtc @1 :UInt64;
  createTimeUtc @2 :UInt64;
  sendTime @3 :UInt64;
  createTime@4 :UInt64;
}

struct Message {
  sourceInfo @0 :SourceInfo;
  value :union {
    downloadBegin @1 :DownloadBegin;
    downloadEnd @2 :DownloadEnd;
  }
}
