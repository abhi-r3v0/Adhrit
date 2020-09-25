.class public final Lo/onSchedule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DataTransportCrashlyticsReportSender;


# static fields
.field public static final ICustomTabsCallback:I

.field private static onMessageChannelReady:[B

.field private static final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x29f

    new-array v0, v0, [B

    const-string v1, "E%/Q\u000f\u00f1\u00fd\u0008\u00f8\u00ff)\u00d2\t\u00fd\u0016\u00e2\u00f9\u00f2\u00f8\u0005\u00f8\u0000\u00f7\u00fc\u0011\u00f6\u0003\u0000\u00ed\t\u00f1\u0005\u00f0\u0012\u00f8\u0000\u0002\u00f8\u0001\r\u00fc\u00f9\u0007\t\u00fb\u00f5\u00fd\u00fd\u0013\u00f4\u00f9\u00f9\u00fd\u0011\u00f3\u00fe\u0005\u00ff\u00f1\t\u00e9\u000f\u00fc\u0014\u00ed\u00ed\u000f\u00f2\u0006\u00ef\r\u00f1\u00fd\u00f9\u0002\"\u00e5\u00f5\u0005\u00f1\n\u00fc\u0011\u00ed\u000e\u00ef\u0007\u00f7\u00fa\t\u00f8\u00ff\r\u00f4\u0003\n\u00f4\u000b\u0002\u00fb\u0003\u00f4\u0003\u0013\u00ed\u0007\u0006\u00f1\u00f8\u00fb\u0005\u00f9\u0019\u00ec\u00ef\u0003\u0001\u00f1\u000e\u00eb\u00fe\u0000\u0007\u0005\u00eb\u00ff\r\u00f0\u0012\u00ed\u00ff\u00fd\u00f9\u0007\t\u00eb\r\u00ff\u0003\u00e9\n\u00f4\u0001\u00f8\u000c\u00fd\u0007\u00ed\u0006\u00f7\u00ff\u0007\t\u00ec\u00fd\u0013\u00f0\u00fc\t\u00f9\u0001\u00fb\u0002\u00ff\u0004\r\u001e\u00dc\u00fe\u00f2\u00f8\u0005\u00f8\u00ff\u0004\u00eb\r\u00ec\u0014\u00e6%\u00eb\u00f0\u0001\u00ff\u00ff\u00f9\u000c\u0016\u00e6\u00f0\u00fe\u0010\u00f8\u0000\u000f\u00f1\u00fd\u0008\u00f8\u00ff\r\u00fa\u00f2\t\u00fd\u00f5\u0001\u0006\u00fd\u00f1\u0011\u00ef\u000b\u00f2\u0006\u000f\u00f1\u00fd\u0008\u00f8\u00ff\n\u00ec\u0006\u0004\u00ff!\u00dc\u00fe\u00f2\u00f8\u0005\u00f8$\u00d7\u0006\t\u00fb\u00f1\u000e\u00ef\u0007\u00f7\u00fa\u000c\u00f5\u00f8\u0013\u00fc\u00eb\u000b\u0002\u00fb\u0003\u00ea\u00fd\u0011\u00eb\r\u00eb\u0005\u001b\u00e5\u00f9 \u00e5\u00f5\u0005\u00f1\n\u000c\u00f5\u0008\u00fd\u00f1\u000b\u00f2\u0006\u0001\u0002\u00fb\u00fd\u00f1\u00f1\u00fe\u0001\u00fb\u0011\u00fa\u00f2\t\u00fd\u00ff\u00f1\u0001(\u00dc\u00fe\u00f2\u00f8\u0005\u00f8\u001d\u00e5\u0003\u00f6\u00fa\u000e\u001a\u00e3\u000b\u00fc\u00fc\u00f8\u00ff\u00f1\u00fe\u0001\u00fb\u00fd\u00fd\u0011\u00eb\u00fd\u0000\u0003\n\u0001\u00eb\r\u001a\u00d9\u0006\u00f5\u0003\n\u0001\u00eb\r\u001f\u00e1\u00eb\r\u00eb\u0002\r\u00f5\u00f9\u0008\u00f8\u00ff\u00f2\t\u00fd\u00fd\u0011\u00eb\u00fd\u0000\u0012\u00fa\u00f2\t\u00fd\u00f9\u00f4\u0001\u0002\t\u00e6)\u00eb\u00f2\u0006\u00fc\u00fe\u00f2\u00f8\u0005\u00f8 \u00eb\u00fd\u00ff\u00f1\u000b\u00f5\t\u00fc\u001a\u00e3\u00f8\u0004\u00fd\r\u00f6\u000c\u00fc\u00ef\u00fe\u00ec\u0000\u00fd\u0003\u0000\u0006\u00f1\u001a\u00e4\r\u00ff\u00f1\u0001\u001b\u00eb\u00f2\u0006\u0002\t\u00e6$\u00dd\u0003\u00fb\u000b\u0017\u00e1\u00f9\u0001\u000b\u00fd\u00ff\u00f1\u000b\u00f5\t\u00fc\u001a\u00e3\u0004\r\u000c\u00dc\u000c\u00fe\u0000\u00f0\u00fd\t\u00f8\u00ff\u00f9\u00fc\u0001\u00f7\u000b\u0003\u00fd\u00f1\u00f4!\u00dc\u0007\u00fa\n\u00ed\u00f7\u00ec\u0000\u00fd\u0003\u0000\u0006\u00f1#\u00dc\u000b\u00f7\u00fb\u0005\u0015\u00d7\u0006\t\u00fb\u00f1\u000f\u00f1\u00fd\u0008\u00f8\u00ff)\u00d2\t\u00fd \u00cc\u0001\u00fe\u000b\u00f5\u00f8\u00f4-\u00dd\u00ed\u000b\u0004\u00fc!\u00d1\u00f8\u0005\u0008\u00fb\n\u0000\u00f3\u0005\u001a\u00e3\u00f9\u00f5\u000b\u0000\u00ed\t\u00f8\u00ff\u00ff\u00f1\u0001&\u00d2\t\u00fd\u0004\r\u00f9\u00f4\u0001\u0002\t\u00e64\u00d2\t\u00fd\u00ee\u000f\u00f1\t\u00f9\u0018\u00eb\u00f2\u0006\u0004\u00eb\r\u00ec\u0014\u00e6%\u00eb\u00f0\u0001\u00ff\u00ff\u00f9\u000c \u00d2\t\u00fd\u0008\u00fa\'\u00dd\u00ef\u0011\u00f6\u00fb\u00f7\u0006\u00f0\u00fe\u0010\u00f8\u0000\u000c\u00f5\u0008\u00fd\u00f1\u0011\u00fc\u00fb\u00fe\u00f0\u000b\u00f0\u00fe\u000b\u0000\u00fc\u00fa\u00f1\u000f\u00ff\u0003\u00fc\u00eb\u000c\u00f1\u00fa\u000b\u0004\u00fc\u0004\u00fa\u00fc\u00f5\u00f8\r\u00f1\r\u00fc\u00f6\u0008\u00f8\u0000\u0004\u00ef\u000b\u00f2\u0006\u00f9\u0006\u00f5\u00fb\u0003\n\u00eb\t\u00f8\u00ff\u00fc\u00fe\u00f2\u00f8\u0005\u00f8\u00ff\u00fc\u00fe\u00f2\u00f8\u0005\u00f8\u00fb\u0005\u00f9 \u00e5\u00f5\u0005\u00f1\n"

    const-string v2, "ISO-8859-1"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x29f

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v0, 0xac

    sput v0, Lo/onSchedule;->ICustomTabsCallback:I

    .line 1051
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v3, 0x90

    aget-byte v4, v1, v3

    int-to-byte v4, v4

    const/16 v5, 0x15

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    const/16 v6, 0x292

    invoke-static {v6, v4, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v4, 0x13

    aget-byte v6, v1, v4

    int-to-byte v6, v6

    const/16 v7, 0x30

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    const/16 v8, 0x285

    invoke-static {v8, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v4

    int-to-byte v6, v6

    const/16 v8, 0x1a

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v9, 0x27f

    invoke-static {v9, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v6, 0x44

    aget-byte v9, v1, v6

    int-to-byte v9, v9

    const/16 v10, 0x50

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v11, 0x279

    invoke-static {v11, v9, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v9, 0xa4

    aget-byte v11, v1, v9

    int-to-byte v11, v11

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v12, 0x272

    invoke-static {v12, v11, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v11, 0x24

    aget-byte v1, v1, v11

    int-to-byte v1, v1

    int-to-byte v12, v1

    const/16 v13, 0x26d

    invoke-static {v13, v1, v12}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v12, 0x27

    aget-byte v13, v1, v12

    int-to-byte v13, v13

    const/16 v14, 0xc0

    aget-byte v1, v1, v14

    int-to-byte v1, v1

    const/16 v15, 0x26a

    invoke-static {v15, v13, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v13, v1, v11

    int-to-byte v13, v13

    const/16 v15, 0x3f

    aget-byte v1, v1, v15

    int-to-byte v1, v1

    const/16 v2, 0x25c

    invoke-static {v2, v13, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v2, 0x61

    aget-byte v13, v1, v2

    int-to-byte v13, v13

    const/16 v16, 0x26

    aget-byte v1, v1, v16

    int-to-byte v1, v1

    const/16 v3, 0x259

    invoke-static {v3, v13, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v3, 0x2a

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    int-to-byte v13, v1

    const/16 v6, 0x24d

    invoke-static {v6, v1, v13}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v12

    int-to-byte v6, v6

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v13, 0x245

    invoke-static {v13, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v3

    int-to-byte v6, v6

    aget-byte v1, v1, v11

    int-to-byte v1, v1

    const/16 v13, 0x237

    invoke-static {v13, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v4

    int-to-byte v6, v6

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    const/16 v13, 0x22f

    invoke-static {v13, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x46

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v4

    int-to-byte v6, v6

    const/16 v13, 0xc

    aget-byte v1, v1, v13

    int-to-byte v1, v1

    const/16 v7, 0x229

    invoke-static {v7, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v5

    int-to-byte v6, v6

    aget-byte v1, v1, v12

    int-to-byte v1, v1

    const/16 v7, 0x223

    invoke-static {v7, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v11

    int-to-byte v6, v6

    aget-byte v1, v1, v12

    int-to-byte v1, v1

    const/16 v7, 0x222

    invoke-static {v7, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v6, 0x109

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    const/16 v7, 0x1e1

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    const/16 v12, 0x21f

    invoke-static {v12, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lo/onSchedule;->ICustomTabsCallback:I

    or-int/lit16 v1, v1, 0x152

    int-to-short v1, v1

    sget-object v6, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v12, v6, v2

    int-to-byte v12, v12

    aget-byte v6, v6, v10

    int-to-byte v6, v6

    invoke-static {v1, v12, v6}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x34

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v13

    int-to-byte v6, v6

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    const/16 v12, 0x1f2

    invoke-static {v12, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v15

    int-to-byte v6, v6

    const/4 v12, 0x4

    aget-byte v1, v1, v12

    int-to-byte v1, v1

    const/16 v2, 0x1e8

    invoke-static {v2, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v2, v1, v10

    int-to-byte v2, v2

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    const/16 v6, 0x1d3

    invoke-static {v6, v2, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v2, v1, v13

    int-to-byte v2, v2

    aget-byte v1, v1, v14

    int-to-byte v1, v1

    const/16 v6, 0x1c8

    invoke-static {v6, v2, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lo/onSchedule;->ICustomTabsCallback:I

    or-int/lit16 v1, v1, 0x112

    int-to-short v1, v1

    sget-object v2, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v2, v4

    int-to-byte v6, v6

    aget-byte v2, v2, v5

    int-to-byte v2, v2

    invoke-static {v1, v6, v2}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v2, 0x18

    aget-byte v6, v1, v2

    int-to-byte v6, v6

    aget-byte v1, v1, v13

    int-to-byte v1, v1

    const/16 v5, 0x1b8

    invoke-static {v5, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v5, v1, v9

    int-to-byte v5, v5

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v6, 0x1a6

    invoke-static {v6, v5, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v5, v1, v4

    int-to-byte v5, v5

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v6, 0x1a1

    invoke-static {v6, v5, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/4 v5, 0x7

    aget-byte v6, v1, v5

    int-to-byte v6, v6

    aget-byte v1, v1, v9

    int-to-byte v1, v1

    const/16 v4, 0x19b

    invoke-static {v4, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v4, v1, v10

    int-to-byte v4, v4

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    const/16 v6, 0x192

    invoke-static {v6, v4, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x43

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v4, v1, v9

    int-to-byte v4, v4

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v6, 0x187

    invoke-static {v6, v4, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v4, v1, v11

    int-to-byte v4, v4

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    const/16 v6, 0x182

    invoke-static {v6, v4, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x21

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v9

    int-to-byte v6, v6

    const/16 v17, 0x54

    aget-byte v1, v1, v17

    int-to-byte v1, v1

    const/16 v10, 0x17f

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x42

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v5

    int-to-byte v6, v6

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v10, 0x17a

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x27

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v2

    int-to-byte v6, v6

    aget-byte v1, v1, v15

    int-to-byte v1, v1

    const/16 v10, 0x171

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v1, v1, v9

    int-to-byte v1, v1

    int-to-byte v6, v1

    const/16 v10, 0x15f

    invoke-static {v10, v1, v6}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x36

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v9

    int-to-byte v6, v6

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v10, 0x15a

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v9

    int-to-byte v6, v6

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v10, 0x155

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v5

    int-to-byte v6, v6

    aget-byte v1, v1, v16

    int-to-byte v1, v1

    const/16 v10, 0x150

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x37

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v5

    int-to-byte v6, v6

    aget-byte v1, v1, v16

    int-to-byte v1, v1

    const/16 v10, 0x147

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x31

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v3

    int-to-byte v6, v6

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v10, 0x13e

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v11

    int-to-byte v6, v6

    const/16 v10, 0x30

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v10, 0x136

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v13

    int-to-byte v6, v6

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v10, 0x133

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x41

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v13

    int-to-byte v6, v6

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    const/16 v10, 0x129

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v14

    int-to-byte v6, v6

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    const/16 v10, 0x11f

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v5

    int-to-byte v6, v6

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v10, 0x10e

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v13

    int-to-byte v6, v6

    const/16 v10, 0x30

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v10, 0x105

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v6, 0x44

    aget-byte v10, v1, v6

    int-to-byte v6, v10

    aget-byte v1, v1, v15

    int-to-byte v1, v1

    const/16 v10, 0xfb

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v6, 0x61

    aget-byte v10, v1, v6

    int-to-byte v6, v10

    const/16 v10, 0x44

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v10, 0xf4

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x35

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v13

    int-to-byte v6, v6

    aget-byte v1, v1, v9

    int-to-byte v1, v1

    const/16 v10, 0xe8

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v6, 0x90

    aget-byte v10, v1, v6

    int-to-byte v6, v10

    const/16 v10, 0x15

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v10, 0xde

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v6, 0x44

    aget-byte v1, v1, v6

    int-to-byte v1, v1

    int-to-byte v6, v1

    const/16 v10, 0xd1

    invoke-static {v10, v1, v6}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v3

    int-to-byte v6, v6

    const/16 v10, 0x27

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v10, 0xca

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v6, v1, v4

    int-to-byte v6, v6

    const/16 v10, 0x30

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v10, 0xc2

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lo/onSchedule;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    sget-object v6, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v10, v6, v14

    int-to-byte v10, v10

    const/16 v14, 0x15

    aget-byte v6, v6, v14

    int-to-byte v6, v6

    invoke-static {v1, v10, v6}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v6, 0x61

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    const/16 v10, 0x27

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v10, 0x9e

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v6, 0x44

    aget-byte v10, v1, v6

    int-to-byte v6, v10

    const/16 v10, 0x50

    aget-byte v1, v1, v10

    int-to-byte v1, v1

    const/16 v10, 0x92

    invoke-static {v10, v6, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    const/16 v6, 0x8b

    invoke-static {v6, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v3, 0x44

    aget-byte v6, v1, v3

    int-to-byte v3, v6

    aget-byte v1, v1, v15

    int-to-byte v1, v1

    const/16 v6, 0x83

    invoke-static {v6, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v3, v1, v16

    int-to-byte v3, v3

    const/16 v6, 0x15

    aget-byte v1, v1, v6

    int-to-byte v1, v1

    const/16 v6, 0x7c

    invoke-static {v6, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v3, v1, v13

    int-to-byte v3, v3

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    const/16 v4, 0x7a

    invoke-static {v4, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x45

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v3, v1, v5

    int-to-byte v3, v3

    aget-byte v1, v1, v15

    int-to-byte v1, v1

    const/16 v4, 0x70

    invoke-static {v4, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    aget-byte v1, v1, v12

    int-to-byte v1, v1

    const/16 v3, 0x67

    invoke-static {v3, v2, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v2, v1, v5

    int-to-byte v2, v2

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v3, 0x55

    invoke-static {v3, v2, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v2, 0x13

    aget-byte v3, v1, v2

    int-to-byte v2, v3

    aget-byte v1, v1, v13

    int-to-byte v1, v1

    const/16 v3, 0x4c

    invoke-static {v3, v2, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    const/16 v3, 0x90

    aget-byte v4, v1, v3

    int-to-byte v3, v4

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v2, v1, v13

    int-to-byte v2, v2

    aget-byte v1, v1, v9

    int-to-byte v1, v1

    const/16 v3, 0x39

    invoke-static {v3, v2, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    int-to-short v2, v2

    const/16 v3, 0x90

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v2, 0x4b

    aget-byte v2, v1, v2

    int-to-short v2, v2

    const/16 v3, 0x50

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v4, 0x44

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v2, 0x1aa

    aget-byte v2, v1, v2

    int-to-short v2, v2

    aget-byte v3, v1, v13

    int-to-byte v3, v3

    const/16 v4, 0x27

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v2, v1, v4

    int-to-short v2, v2

    const/16 v3, 0x44

    aget-byte v4, v1, v3

    int-to-byte v4, v4

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    invoke-static {v2, v4, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    aget-byte v2, v1, v3

    int-to-short v2, v2

    const/16 v3, 0x13

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo/onSchedule;->onMessageChannelReady:[B

    const/16 v2, 0x15

    aget-byte v2, v1, v2

    int-to-short v2, v2

    aget-byte v3, v1, v5

    int-to-byte v3, v3

    aget-byte v1, v1, v13

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lo/onSchedule;->onPostMessage(SSS)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sput-object v0, Lo/onSchedule;->onPostMessage:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onPostMessage(SSS)Ljava/lang/String;
    .locals 6

    rsub-int p0, p0, 0x296

    sget-object v0, Lo/onSchedule;->onMessageChannelReady:[B

    add-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p2, p2, 0x76

    new-array v1, p1, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    move p2, p1

    move p1, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p2

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v4, v0, p0

    move v5, p1

    move p1, p0

    move p0, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move v0, p2

    move p2, v5

    :goto_1
    sub-int/2addr v0, p0

    add-int/lit8 p0, v0, -0x2

    add-int/lit8 p1, p1, 0x1

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v5, p2

    move p2, p0

    move p0, p1

    move p1, v5

    goto :goto_0
.end method


# virtual methods
.method public final extraCallback(Lo/checkNoSpaceLeft;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asBinder()Ljava/lang/String;

    move-result-object p1

    .line 60
    sget-object v0, Lo/onSchedule;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
