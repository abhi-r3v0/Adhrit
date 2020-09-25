.class public final enum Lo/onResponse$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onResponse$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback$Stub:Lo/onResponse$ICustomTabsCallback;

.field private static enum ICustomTabsCallback$Stub$Proxy:Lo/onResponse$ICustomTabsCallback;

.field private static enum ICustomTabsService:Lo/onResponse$ICustomTabsCallback;

.field private static enum ICustomTabsService$Stub:Lo/onResponse$ICustomTabsCallback;

.field private static enum IPostMessageService:Lo/onResponse$ICustomTabsCallback;

.field private static enum IPostMessageService$Stub:Lo/onResponse$ICustomTabsCallback;

.field private static enum asBinder:Lo/onResponse$ICustomTabsCallback;

.field private static enum asInterface:Lo/onResponse$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/onResponse$ICustomTabsCallback;

.field private static enum extraCommand:Lo/onResponse$ICustomTabsCallback;

.field private static enum getInterfaceDescriptor:Lo/onResponse$ICustomTabsCallback;

.field private static enum mayLaunchUrl:Lo/onResponse$ICustomTabsCallback;

.field private static enum newSession:Lo/onResponse$ICustomTabsCallback;

.field public static final onMessageChannelReady:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/onResponse$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum onNavigationEvent:Lo/onResponse$ICustomTabsCallback;

.field private static enum onPostMessage:Lo/onResponse$ICustomTabsCallback;

.field private static enum onRelationshipValidationResult:Lo/onResponse$ICustomTabsCallback;

.field private static enum onTransact:Lo/onResponse$ICustomTabsCallback;

.field private static enum postMessage:Lo/onResponse$ICustomTabsCallback;

.field private static enum requestPostMessageChannel:Lo/onResponse$ICustomTabsCallback;

.field private static enum updateVisuals:Lo/onResponse$ICustomTabsCallback;

.field private static enum warmup:Lo/onResponse$ICustomTabsCallback;


# instance fields
.field public final ICustomTabsCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_MOBILE_SUBTYPE"

    invoke-direct {v0, v2, v1, v1}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    .line 2
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "GPRS"

    invoke-direct {v0, v3, v2, v2}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->onPostMessage:Lo/onResponse$ICustomTabsCallback;

    .line 3
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "EDGE"

    invoke-direct {v0, v4, v3, v3}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->onRelationshipValidationResult:Lo/onResponse$ICustomTabsCallback;

    .line 4
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "UMTS"

    invoke-direct {v0, v5, v4, v4}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/onResponse$ICustomTabsCallback;

    .line 5
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "CDMA"

    invoke-direct {v0, v6, v5, v5}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->onTransact:Lo/onResponse$ICustomTabsCallback;

    .line 6
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/4 v6, 0x5

    const-string v7, "EVDO_0"

    invoke-direct {v0, v7, v6, v6}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->asBinder:Lo/onResponse$ICustomTabsCallback;

    .line 7
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/4 v7, 0x6

    const-string v8, "EVDO_A"

    invoke-direct {v0, v8, v7, v7}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->asInterface:Lo/onResponse$ICustomTabsCallback;

    .line 8
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/4 v8, 0x7

    const-string v9, "RTT"

    invoke-direct {v0, v9, v8, v8}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->getInterfaceDescriptor:Lo/onResponse$ICustomTabsCallback;

    .line 9
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v9, 0x8

    const-string v10, "HSDPA"

    invoke-direct {v0, v10, v9, v9}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->ICustomTabsService:Lo/onResponse$ICustomTabsCallback;

    .line 10
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v10, 0x9

    const-string v11, "HSUPA"

    invoke-direct {v0, v11, v10, v10}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Lo/onResponse$ICustomTabsCallback;

    .line 11
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v11, 0xa

    const-string v12, "HSPA"

    invoke-direct {v0, v12, v11, v11}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->warmup:Lo/onResponse$ICustomTabsCallback;

    .line 12
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v12, 0xb

    const-string v13, "IDEN"

    invoke-direct {v0, v13, v12, v12}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->newSession:Lo/onResponse$ICustomTabsCallback;

    .line 13
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v13, 0xc

    const-string v14, "EVDO_B"

    invoke-direct {v0, v14, v13, v13}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->postMessage:Lo/onResponse$ICustomTabsCallback;

    .line 14
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v14, 0xd

    const-string v15, "LTE"

    invoke-direct {v0, v15, v14, v14}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->mayLaunchUrl:Lo/onResponse$ICustomTabsCallback;

    .line 15
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v15, 0xe

    const-string v14, "EHRPD"

    invoke-direct {v0, v14, v15, v15}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->requestPostMessageChannel:Lo/onResponse$ICustomTabsCallback;

    .line 16
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v14, 0xf

    const-string v15, "HSPAP"

    invoke-direct {v0, v15, v14, v14}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->extraCommand:Lo/onResponse$ICustomTabsCallback;

    .line 17
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v15, 0x10

    const-string v14, "GSM"

    invoke-direct {v0, v14, v15, v15}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->updateVisuals:Lo/onResponse$ICustomTabsCallback;

    .line 18
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v14, 0x11

    const-string v15, "TD_SCDMA"

    invoke-direct {v0, v15, v14, v14}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->IPostMessageService$Stub:Lo/onResponse$ICustomTabsCallback;

    .line 19
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v15, 0x12

    const-string v14, "IWLAN"

    invoke-direct {v0, v14, v15, v15}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->ICustomTabsService$Stub:Lo/onResponse$ICustomTabsCallback;

    .line 20
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const/16 v14, 0x13

    const-string v15, "LTE_CA"

    invoke-direct {v0, v15, v14, v14}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->IPostMessageService:Lo/onResponse$ICustomTabsCallback;

    .line 21
    new-instance v0, Lo/onResponse$ICustomTabsCallback;

    const-string v15, "COMBINED"

    const/16 v14, 0x14

    const/16 v13, 0x64

    invoke-direct {v0, v15, v14, v13}, Lo/onResponse$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$ICustomTabsCallback;->onNavigationEvent:Lo/onResponse$ICustomTabsCallback;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 24
    sput-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v13, Lo/onResponse$ICustomTabsCallback;->extraCallback:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->onPostMessage:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->onRelationshipValidationResult:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->onTransact:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->asBinder:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->asInterface:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->getInterfaceDescriptor:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->ICustomTabsService:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->warmup:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->newSession:Lo/onResponse$ICustomTabsCallback;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->postMessage:Lo/onResponse$ICustomTabsCallback;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->mayLaunchUrl:Lo/onResponse$ICustomTabsCallback;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->requestPostMessageChannel:Lo/onResponse$ICustomTabsCallback;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->extraCommand:Lo/onResponse$ICustomTabsCallback;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->updateVisuals:Lo/onResponse$ICustomTabsCallback;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->IPostMessageService$Stub:Lo/onResponse$ICustomTabsCallback;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->ICustomTabsService$Stub:Lo/onResponse$ICustomTabsCallback;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lo/onResponse$ICustomTabsCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$ICustomTabsCallback;->IPostMessageService:Lo/onResponse$ICustomTabsCallback;

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lo/onResponse$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void
.end method
