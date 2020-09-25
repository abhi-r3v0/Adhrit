.class public final enum Lo/bk$onPostMessage$ICustomTabsCallback;
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
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/bk$onPostMessage$ICustomTabsCallback;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum ICustomTabsCallback$Stub:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum ICustomTabsService:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum IPostMessageService:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final IPostMessageService$Stub:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/bk$onPostMessage$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum asBinder:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum asInterface:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum extraCallback:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum extraCommand:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum getInterfaceDescriptor:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum mayLaunchUrl:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum newSession:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum onMessageChannelReady:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum onNavigationEvent:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum onPostMessage:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum onRelationshipValidationResult:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum onTransact:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum postMessage:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum requestPostMessageChannel:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum updateVisuals:Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final synthetic validateRelationship:[Lo/bk$onPostMessage$ICustomTabsCallback;

.field private static final enum warmup:Lo/bk$onPostMessage$ICustomTabsCallback;


# instance fields
.field private final ICustomTabsService$Stub$Proxy:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_MOBILE_SUBTYPE"

    invoke-direct {v0, v2, v1, v1}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 16
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "GPRS"

    invoke-direct {v0, v3, v2, v2}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->extraCallback:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 17
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "EDGE"

    invoke-direct {v0, v4, v3, v3}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->onMessageChannelReady:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 18
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "UMTS"

    invoke-direct {v0, v5, v4, v4}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->onNavigationEvent:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 19
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "CDMA"

    invoke-direct {v0, v6, v5, v5}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 20
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/4 v6, 0x5

    const-string v7, "EVDO_0"

    invoke-direct {v0, v7, v6, v6}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 21
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/4 v7, 0x6

    const-string v8, "EVDO_A"

    invoke-direct {v0, v8, v7, v7}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->asBinder:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 22
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/4 v8, 0x7

    const-string v9, "RTT"

    invoke-direct {v0, v9, v8, v8}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->asInterface:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 23
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v9, 0x8

    const-string v10, "HSDPA"

    invoke-direct {v0, v10, v9, v9}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->onTransact:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 24
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v10, 0x9

    const-string v11, "HSUPA"

    invoke-direct {v0, v11, v10, v10}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 25
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v11, 0xa

    const-string v12, "HSPA"

    invoke-direct {v0, v12, v11, v11}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->warmup:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 26
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v12, 0xb

    const-string v13, "IDEN"

    invoke-direct {v0, v13, v12, v12}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsService:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 27
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v13, 0xc

    const-string v14, "EVDO_B"

    invoke-direct {v0, v14, v13, v13}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->newSession:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 28
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v14, 0xd

    const-string v15, "LTE"

    invoke-direct {v0, v15, v14, v14}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->getInterfaceDescriptor:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 29
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v15, 0xe

    const-string v14, "EHRPD"

    invoke-direct {v0, v14, v15, v15}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 30
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v14, 0xf

    const-string v15, "HSPAP"

    invoke-direct {v0, v15, v14, v14}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->requestPostMessageChannel:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 31
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v15, 0x10

    const-string v14, "GSM"

    invoke-direct {v0, v14, v15, v15}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->extraCommand:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 32
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v14, 0x11

    const-string v15, "TD_SCDMA"

    invoke-direct {v0, v15, v14, v14}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->updateVisuals:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 33
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v15, 0x12

    const-string v14, "IWLAN"

    invoke-direct {v0, v14, v15, v15}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->mayLaunchUrl:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 34
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v14, 0x13

    const-string v15, "LTE_CA"

    invoke-direct {v0, v15, v14, v14}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->postMessage:Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 35
    new-instance v0, Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v15, 0x14

    const-string v14, "COMBINED"

    const/16 v13, 0x64

    invoke-direct {v0, v14, v15, v13}, Lo/bk$onPostMessage$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->IPostMessageService:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v13, 0x15

    new-array v13, v13, [Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 36
    sget-object v14, Lo/bk$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v14, v13, v1

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->extraCallback:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v2

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->onMessageChannelReady:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v3

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->onNavigationEvent:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v4

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v5

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v6

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->asBinder:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v7

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->asInterface:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v8

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->onTransact:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v9

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v10

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->warmup:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v11

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsService:Lo/bk$onPostMessage$ICustomTabsCallback;

    aput-object v1, v13, v12

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->newSession:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->getInterfaceDescriptor:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->requestPostMessageChannel:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->extraCommand:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->updateVisuals:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->mayLaunchUrl:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lo/bk$onPostMessage$ICustomTabsCallback;->postMessage:Lo/bk$onPostMessage$ICustomTabsCallback;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    aput-object v0, v13, v15

    sput-object v13, Lo/bk$onPostMessage$ICustomTabsCallback;->validateRelationship:[Lo/bk$onPostMessage$ICustomTabsCallback;

    .line 37
    new-instance v0, Lo/bX;

    invoke-direct {v0}, Lo/bX;-><init>()V

    sput-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->IPostMessageService$Stub:Lo/onItemLongClick;

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
    iput p3, p0, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:I

    return-void
.end method

.method public static extraCallback()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 3
    sget-object v0, Lo/gj;->onPostMessage:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/bk$onPostMessage$ICustomTabsCallback;
    .locals 1

    .line 1
    sget-object v0, Lo/bk$onPostMessage$ICustomTabsCallback;->validateRelationship:[Lo/bk$onPostMessage$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/bk$onPostMessage$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/bk$onPostMessage$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/bk$onPostMessage$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:I

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

    invoke-virtual {p0}, Lo/bk$onPostMessage$ICustomTabsCallback;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lo/bk$onPostMessage$ICustomTabsCallback;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
