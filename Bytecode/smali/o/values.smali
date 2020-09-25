.class public final enum Lo/values;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/values;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/values;

.field public static final enum ICustomTabsCallback$Stub:Lo/values;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/values;

.field public static final enum ICustomTabsService:Lo/values;

.field public static final enum ICustomTabsService$Stub:Lo/values;

.field public static final enum ICustomTabsService$Stub$Proxy:Lo/values;

.field public static final enum IPostMessageService:Lo/values;

.field public static final enum IPostMessageService$Stub:Lo/values;

.field public static final enum IPostMessageService$Stub$Proxy:Lo/values;

.field public static final enum asBinder:Lo/values;

.field public static final enum asInterface:Lo/values;

.field public static final enum cancel:Lo/values;

.field public static final enum cancelAll:Lo/values;

.field public static final enum extraCallback:Lo/values;

.field public static final enum extraCommand:Lo/values;

.field private static final synthetic getDefaultImpl:[Lo/values;

.field public static final enum getInterfaceDescriptor:Lo/values;

.field public static final enum mayLaunchUrl:Lo/values;

.field public static final enum newSession:Lo/values;

.field public static final enum notify:Lo/values;

.field public static final enum onMessageChannelReady:Lo/values;

.field public static final enum onNavigationEvent:Lo/values;

.field public static final enum onPostMessage:Lo/values;

.field public static final enum onRelationshipValidationResult:Lo/values;

.field public static final enum onTransact:Lo/values;

.field public static final enum postMessage:Lo/values;

.field public static final enum requestPostMessageChannel:Lo/values;

.field public static final enum updateVisuals:Lo/values;

.field public static final enum validateRelationship:Lo/values;

.field public static final enum warmup:Lo/values;


# instance fields
.field public final INotificationSideChannel:[[B

.field public final INotificationSideChannel$Default:Ljava/lang/String;

.field private final INotificationSideChannel$Stub:Ljava/util/regex/Pattern;

.field private final INotificationSideChannel$Stub$Proxy:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 16
    new-instance v6, Lo/values;

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lo/values;->onNavigationEvent:Lo/values;

    .line 18
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 00 98 08 48"

    const-string v2, "A0 00 00 00 03 10 10"

    const-string v3, "A0 00 00 00 03"

    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "VISA"

    const/4 v10, 0x1

    const-string v11, "VISA"

    const-string v12, "^4[0-9]{6,}$"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->onMessageChannelReady:Lo/values;

    .line 19
    new-instance v0, Lo/values;

    const-string v4, "A0 00 00 03"

    filled-new-array {v3, v4, v2, v1}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "NAB_VISA"

    const/16 v16, 0x2

    const-string v17, "VISA"

    const-string v18, "^4[0-9]{6,}$"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->extraCallback:Lo/values;

    .line 20
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 00 04"

    const-string v2, "A0 00 00 00 05"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v2, "MASTER_CARD"

    const/4 v3, 0x3

    const-string v4, "Master card"

    const-string v5, "^5[1-5][0-9]{5,}$"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->onPostMessage:Lo/values;

    .line 21
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 00 25"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "AMERICAN_EXPRESS"

    const/4 v10, 0x4

    const-string v11, "American express"

    const-string v12, "^3[47][0-9]{5,}$"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->ICustomTabsCallback:Lo/values;

    .line 22
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 00 42"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v2, "CB"

    const/4 v3, 0x5

    const-string v4, "CB"

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->onTransact:Lo/values;

    .line 23
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 00 29"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "LINK"

    const/4 v10, 0x6

    const-string v11, "LINK"

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->asInterface:Lo/values;

    .line 24
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 00 65"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v2, "JCB"

    const/4 v3, 0x7

    const-string v4, "JCB"

    const-string v5, "^(?:2131|1800|35[0-9]{3})[0-9]{3,}$"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->ICustomTabsCallback$Stub:Lo/values;

    .line 25
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 01 21 10 10"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "DANKORT"

    const/16 v10, 0x8

    const-string v11, "Dankort"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->asBinder:Lo/values;

    .line 26
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 01 41 00 01"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "COGEBAN"

    const/16 v16, 0x9

    const-string v17, "CoGeBan"

    const/16 v18, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->onRelationshipValidationResult:Lo/values;

    .line 27
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 01 52 30 10"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "DISCOVER"

    const/16 v10, 0xa

    const-string v11, "Discover"

    const-string v12, "(6011|65|64[4-9]|622)[0-9]*"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->newSession:Lo/values;

    .line 28
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 01 54"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "BANRISUL"

    const/16 v16, 0xb

    const-string v17, "Banrisul"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->ICustomTabsCallback$Stub$Proxy:Lo/values;

    .line 29
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 02 28"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "SPAN"

    const/16 v10, 0xc

    const-string v11, "Saudi Payments Network"

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->ICustomTabsService:Lo/values;

    .line 30
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 02 77"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "INTERAC"

    const/16 v16, 0xd

    const-string v17, "Interac"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->getInterfaceDescriptor:Lo/values;

    .line 31
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 03 24"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "ZIP"

    const/16 v10, 0xe

    const-string v11, "Discover Card"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->warmup:Lo/values;

    .line 32
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 03 33"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "UNIONPAY"

    const/16 v16, 0xf

    const-string v17, "UnionPay"

    const-string v18, "^62[0-9]{14,17}"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->updateVisuals:Lo/values;

    .line 33
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 03 59"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "EAPS"

    const/16 v10, 0x10

    const-string v11, "Euro Alliance of Payment Schemes"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->mayLaunchUrl:Lo/values;

    .line 34
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 03 71"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "VERVE"

    const/16 v16, 0x11

    const-string v17, "Verve"

    const/16 v18, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->postMessage:Lo/values;

    .line 35
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 04 39"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "TENN"

    const/16 v10, 0x12

    const-string v11, "The Exchange Network ATM Network"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->requestPostMessageChannel:Lo/values;

    .line 36
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 05 24 10 10"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "RUPAY"

    const/16 v16, 0x13

    const-string v17, "Rupay"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->extraCommand:Lo/values;

    .line 37
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 04 32 00 01"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v9, "\u041f\u0420\u041e100"

    const/16 v10, 0x14

    const-string/jumbo v11, "\u041f\u0420\u041e100"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->IPostMessageService$Stub:Lo/values;

    .line 38
    new-instance v0, Lo/values;

    const-string v2, "D2 76 00 00 25 45 50 01 00"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "ZKA"

    const/16 v16, 0x15

    const-string v17, "ZKA"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->IPostMessageService:Lo/values;

    .line 39
    new-instance v0, Lo/values;

    const-string v2, "D5 78 00 00 02 10 10"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "BANKAXEPT"

    const/16 v10, 0x16

    const-string v11, "Bankaxept"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->validateRelationship:Lo/values;

    .line 40
    new-instance v0, Lo/values;

    const-string v2, "F0 00 00 00 03 00 01"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "BRADESCO"

    const/16 v16, 0x17

    const-string v17, "BRADESCO"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->ICustomTabsService$Stub:Lo/values;

    .line 41
    new-instance v0, Lo/values;

    const-string v2, "A0 00 00 00 24 01"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "MIDLAND"

    const/16 v10, 0x18

    const-string v11, "Midland"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->ICustomTabsService$Stub$Proxy:Lo/values;

    .line 42
    new-instance v0, Lo/values;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "PBS"

    const/16 v16, 0x19

    const-string v17, "PBS"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->IPostMessageService$Stub$Proxy:Lo/values;

    .line 43
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 04 54"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v2, "ETRANZACT"

    const/16 v3, 0x1a

    const-string v4, "eTranzact"

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->cancel:Lo/values;

    .line 44
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 04 76 6C"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "GOOGLE"

    const/16 v10, 0x1b

    const-string v11, "Google"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->notify:Lo/values;

    .line 45
    new-instance v0, Lo/values;

    const-string v1, "A0 00 00 03 71 00 01"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v2, "INTER_SWITCH"

    const/16 v3, 0x1c

    const-string v4, "InterSwitch"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/values;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/values;->cancelAll:Lo/values;

    const/16 v1, 0x1d

    new-array v1, v1, [Lo/values;

    .line 14
    sget-object v2, Lo/values;->onNavigationEvent:Lo/values;

    aput-object v2, v1, v7

    sget-object v2, Lo/values;->onMessageChannelReady:Lo/values;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->extraCallback:Lo/values;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->onPostMessage:Lo/values;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->ICustomTabsCallback:Lo/values;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->onTransact:Lo/values;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->asInterface:Lo/values;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->ICustomTabsCallback$Stub:Lo/values;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->asBinder:Lo/values;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->onRelationshipValidationResult:Lo/values;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->newSession:Lo/values;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->ICustomTabsCallback$Stub$Proxy:Lo/values;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->ICustomTabsService:Lo/values;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->getInterfaceDescriptor:Lo/values;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->warmup:Lo/values;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->updateVisuals:Lo/values;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->mayLaunchUrl:Lo/values;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->postMessage:Lo/values;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->requestPostMessageChannel:Lo/values;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->extraCommand:Lo/values;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->IPostMessageService$Stub:Lo/values;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->IPostMessageService:Lo/values;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->validateRelationship:Lo/values;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->ICustomTabsService$Stub:Lo/values;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->ICustomTabsService$Stub$Proxy:Lo/values;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->IPostMessageService$Stub$Proxy:Lo/values;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->cancel:Lo/values;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lo/values;->notify:Lo/values;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    sput-object v1, Lo/values;->getDefaultImpl:[Lo/values;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p5, p0, Lo/values;->INotificationSideChannel$Stub$Proxy:[Ljava/lang/String;

    .line 79
    array-length p1, p5

    new-array p1, p1, [[B

    iput-object p1, p0, Lo/values;->INotificationSideChannel:[[B

    const/4 p1, 0x0

    .line 80
    :goto_0
    iget-object p2, p0, Lo/values;->INotificationSideChannel$Stub$Proxy:[Ljava/lang/String;

    array-length p2, p2

    if-ge p1, p2, :cond_0

    .line 81
    iget-object p2, p0, Lo/values;->INotificationSideChannel:[[B

    aget-object v0, p5, p1

    invoke-static {v0}, Lo/extraCallback;->extraCallback(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iput-object p3, p0, Lo/values;->INotificationSideChannel$Default:Ljava/lang/String;

    .line 84
    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lo/values;->INotificationSideChannel$Stub:Ljava/util/regex/Pattern;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lo/values;->INotificationSideChannel$Stub:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/values;
    .locals 10

    .line 117
    sget-object v0, Lo/values;->onNavigationEvent:Lo/values;

    if-eqz p0, :cond_2

    .line 119
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-static {}, Lo/values;->values()[Lo/values;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1097
    iget-object v6, v5, Lo/values;->INotificationSideChannel$Stub$Proxy:[Ljava/lang/String;

    .line 121
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 122
    invoke-static {v9}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v0, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static extraCallback(Ljava/lang/String;)Lo/values;
    .locals 7

    .line 140
    sget-object v0, Lo/values;->onNavigationEvent:Lo/values;

    if-eqz p0, :cond_1

    .line 142
    invoke-static {}, Lo/values;->values()[Lo/values;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 143
    iget-object v5, v4, Lo/values;->INotificationSideChannel$Stub:Ljava/util/regex/Pattern;

    if-eqz v5, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/values;
    .locals 1

    .line 14
    const-class v0, Lo/values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/values;

    return-object p0
.end method

.method public static values()[Lo/values;
    .locals 1

    .line 14
    sget-object v0, Lo/values;->getDefaultImpl:[Lo/values;

    invoke-virtual {v0}, [Lo/values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/values;

    return-object v0
.end method
