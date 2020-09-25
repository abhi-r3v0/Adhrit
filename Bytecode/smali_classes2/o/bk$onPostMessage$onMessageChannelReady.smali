.class public final enum Lo/bk$onPostMessage$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bk$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/bk$onPostMessage$onMessageChannelReady;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum ICustomTabsCallback$Stub:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum ICustomTabsService:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final synthetic ICustomTabsService$Stub:[Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum asBinder:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum asInterface:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum extraCallback:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final extraCommand:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/bk$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum getInterfaceDescriptor:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum mayLaunchUrl:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum newSession:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum onMessageChannelReady:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum onNavigationEvent:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum onPostMessage:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum onRelationshipValidationResult:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum onTransact:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum postMessage:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum requestPostMessageChannel:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum updateVisuals:Lo/bk$onPostMessage$onMessageChannelReady;

.field private static final enum warmup:Lo/bk$onPostMessage$onMessageChannelReady;


# instance fields
.field private final ICustomTabsService$Stub$Proxy:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 15
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->onNavigationEvent:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 16
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "MOBILE"

    invoke-direct {v0, v3, v2, v1}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->extraCallback:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 17
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "WIFI"

    invoke-direct {v0, v4, v3, v2}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 18
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "MOBILE_MMS"

    invoke-direct {v0, v5, v4, v3}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 19
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "MOBILE_SUPL"

    invoke-direct {v0, v6, v5, v4}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 20
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "MOBILE_DUN"

    invoke-direct {v0, v7, v6, v5}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 21
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/4 v7, 0x6

    const-string v8, "MOBILE_HIPRI"

    invoke-direct {v0, v8, v7, v6}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->asBinder:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 22
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/4 v8, 0x7

    const-string v9, "WIMAX"

    invoke-direct {v0, v9, v8, v7}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->onRelationshipValidationResult:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 23
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v9, 0x8

    const-string v10, "BLUETOOTH"

    invoke-direct {v0, v10, v9, v8}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->asInterface:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 24
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v10, 0x9

    const-string v11, "DUMMY"

    invoke-direct {v0, v11, v10, v9}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->onTransact:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 25
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v11, 0xa

    const-string v12, "ETHERNET"

    invoke-direct {v0, v12, v11, v10}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->getInterfaceDescriptor:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 26
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v12, 0xb

    const-string v13, "MOBILE_FOTA"

    invoke-direct {v0, v13, v12, v11}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->warmup:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 27
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v13, 0xc

    const-string v14, "MOBILE_IMS"

    invoke-direct {v0, v14, v13, v12}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsService:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 28
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v14, 0xd

    const-string v15, "MOBILE_CBS"

    invoke-direct {v0, v15, v14, v13}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 29
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v15, 0xe

    const-string v13, "WIFI_P2P"

    invoke-direct {v0, v13, v15, v14}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->newSession:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 30
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v13, 0xf

    const-string v14, "MOBILE_IA"

    invoke-direct {v0, v14, v13, v15}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->postMessage:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 31
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v14, 0x10

    const-string v15, "MOBILE_EMERGENCY"

    invoke-direct {v0, v15, v14, v13}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->requestPostMessageChannel:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 32
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v15, 0x11

    const-string v13, "PROXY"

    invoke-direct {v0, v13, v15, v14}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->updateVisuals:Lo/bk$onPostMessage$onMessageChannelReady;

    .line 33
    new-instance v0, Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v13, 0x12

    const-string v14, "VPN"

    invoke-direct {v0, v14, v13, v15}, Lo/bk$onPostMessage$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->mayLaunchUrl:Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v14, 0x13

    new-array v14, v14, [Lo/bk$onPostMessage$onMessageChannelReady;

    .line 34
    sget-object v16, Lo/bk$onPostMessage$onMessageChannelReady;->onNavigationEvent:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v16, v14, v1

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->extraCallback:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v2

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v3

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v4

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v5

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v6

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->asBinder:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v7

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->onRelationshipValidationResult:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v8

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->asInterface:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v9

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->onTransact:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v10

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->getInterfaceDescriptor:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v11

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->warmup:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v12

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsService:Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->newSession:Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->postMessage:Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->requestPostMessageChannel:Lo/bk$onPostMessage$onMessageChannelReady;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lo/bk$onPostMessage$onMessageChannelReady;->updateVisuals:Lo/bk$onPostMessage$onMessageChannelReady;

    aput-object v1, v14, v15

    aput-object v0, v14, v13

    sput-object v14, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsService$Stub:[Lo/bk$onPostMessage$onMessageChannelReady;

    .line 35
    new-instance v0, Lo/bY;

    invoke-direct {v0}, Lo/bY;-><init>()V

    sput-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->extraCommand:Lo/onItemLongClick;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:I

    return-void
.end method

.method public static onPostMessage()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 3
    sget-object v0, Lo/gh;->extraCallback:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/bk$onPostMessage$onMessageChannelReady;
    .locals 1

    .line 1
    sget-object v0, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsService$Stub:[Lo/bk$onPostMessage$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/bk$onPostMessage$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/bk$onPostMessage$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/bk$onPostMessage$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/bk$onPostMessage$onMessageChannelReady;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lo/bk$onPostMessage$onMessageChannelReady;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
