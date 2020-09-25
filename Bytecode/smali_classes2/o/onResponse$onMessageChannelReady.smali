.class public final enum Lo/onResponse$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onResponse$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/onResponse$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static enum ICustomTabsCallback$Stub:Lo/onResponse$onMessageChannelReady;

.field private static enum ICustomTabsCallback$Stub$Proxy:Lo/onResponse$onMessageChannelReady;

.field private static enum ICustomTabsService:Lo/onResponse$onMessageChannelReady;

.field private static enum asBinder:Lo/onResponse$onMessageChannelReady;

.field private static enum asInterface:Lo/onResponse$onMessageChannelReady;

.field private static enum extraCallback:Lo/onResponse$onMessageChannelReady;

.field private static enum extraCommand:Lo/onResponse$onMessageChannelReady;

.field private static enum getInterfaceDescriptor:Lo/onResponse$onMessageChannelReady;

.field private static enum mayLaunchUrl:Lo/onResponse$onMessageChannelReady;

.field private static enum newSession:Lo/onResponse$onMessageChannelReady;

.field private static enum onMessageChannelReady:Lo/onResponse$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/onResponse$onMessageChannelReady;

.field private static enum onRelationshipValidationResult:Lo/onResponse$onMessageChannelReady;

.field private static enum onTransact:Lo/onResponse$onMessageChannelReady;

.field private static enum postMessage:Lo/onResponse$onMessageChannelReady;

.field private static enum requestPostMessageChannel:Lo/onResponse$onMessageChannelReady;

.field private static enum updateVisuals:Lo/onResponse$onMessageChannelReady;

.field private static enum validateRelationship:Lo/onResponse$onMessageChannelReady;

.field private static enum warmup:Lo/onResponse$onMessageChannelReady;


# instance fields
.field public final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "MOBILE"

    invoke-direct {v0, v2, v1, v1}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->extraCallback:Lo/onResponse$onMessageChannelReady;

    .line 2
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2, v2}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->onMessageChannelReady:Lo/onResponse$onMessageChannelReady;

    .line 3
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "MOBILE_MMS"

    invoke-direct {v0, v4, v3, v3}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/onResponse$onMessageChannelReady;

    .line 4
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "MOBILE_SUPL"

    invoke-direct {v0, v5, v4, v4}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->onRelationshipValidationResult:Lo/onResponse$onMessageChannelReady;

    .line 5
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "MOBILE_DUN"

    invoke-direct {v0, v6, v5, v5}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->onTransact:Lo/onResponse$onMessageChannelReady;

    .line 6
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "MOBILE_HIPRI"

    invoke-direct {v0, v7, v6, v6}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->asBinder:Lo/onResponse$onMessageChannelReady;

    .line 7
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v7, 0x6

    const-string v8, "WIMAX"

    invoke-direct {v0, v8, v7, v7}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->asInterface:Lo/onResponse$onMessageChannelReady;

    .line 8
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v8, 0x7

    const-string v9, "BLUETOOTH"

    invoke-direct {v0, v9, v8, v8}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->warmup:Lo/onResponse$onMessageChannelReady;

    .line 9
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v9, 0x8

    const-string v10, "DUMMY"

    invoke-direct {v0, v10, v9, v9}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->newSession:Lo/onResponse$onMessageChannelReady;

    .line 10
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v10, 0x9

    const-string v11, "ETHERNET"

    invoke-direct {v0, v11, v10, v10}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->getInterfaceDescriptor:Lo/onResponse$onMessageChannelReady;

    .line 11
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v11, 0xa

    const-string v12, "MOBILE_FOTA"

    invoke-direct {v0, v12, v11, v11}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsService:Lo/onResponse$onMessageChannelReady;

    .line 12
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v12, 0xb

    const-string v13, "MOBILE_IMS"

    invoke-direct {v0, v13, v12, v12}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/onResponse$onMessageChannelReady;

    .line 13
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v13, 0xc

    const-string v14, "MOBILE_CBS"

    invoke-direct {v0, v14, v13, v13}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->mayLaunchUrl:Lo/onResponse$onMessageChannelReady;

    .line 14
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v14, 0xd

    const-string v15, "WIFI_P2P"

    invoke-direct {v0, v15, v14, v14}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->postMessage:Lo/onResponse$onMessageChannelReady;

    .line 15
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v15, 0xe

    const-string v14, "MOBILE_IA"

    invoke-direct {v0, v14, v15, v15}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->updateVisuals:Lo/onResponse$onMessageChannelReady;

    .line 16
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v14, 0xf

    const-string v15, "MOBILE_EMERGENCY"

    invoke-direct {v0, v15, v14, v14}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->extraCommand:Lo/onResponse$onMessageChannelReady;

    .line 17
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v15, 0x10

    const-string v14, "PROXY"

    invoke-direct {v0, v14, v15, v15}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->requestPostMessageChannel:Lo/onResponse$onMessageChannelReady;

    .line 18
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/16 v14, 0x11

    const-string v15, "VPN"

    invoke-direct {v0, v15, v14, v14}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->validateRelationship:Lo/onResponse$onMessageChannelReady;

    .line 19
    new-instance v0, Lo/onResponse$onMessageChannelReady;

    const/4 v15, -0x1

    const-string v14, "NONE"

    const/16 v13, 0x12

    invoke-direct {v0, v14, v13, v15}, Lo/onResponse$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/onResponse$onMessageChannelReady;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 22
    sput-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v13, Lo/onResponse$onMessageChannelReady;->extraCallback:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->onMessageChannelReady:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->onRelationshipValidationResult:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->onTransact:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->asBinder:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->asInterface:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->warmup:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->newSession:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->getInterfaceDescriptor:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->ICustomTabsService:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->mayLaunchUrl:Lo/onResponse$onMessageChannelReady;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->postMessage:Lo/onResponse$onMessageChannelReady;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->updateVisuals:Lo/onResponse$onMessageChannelReady;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->extraCommand:Lo/onResponse$onMessageChannelReady;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->requestPostMessageChannel:Lo/onResponse$onMessageChannelReady;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->validateRelationship:Lo/onResponse$onMessageChannelReady;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lo/onResponse$onMessageChannelReady;->ICustomTabsCallback:Landroid/util/SparseArray;

    sget-object v1, Lo/onResponse$onMessageChannelReady;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

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
    iput p3, p0, Lo/onResponse$onMessageChannelReady;->onNavigationEvent:I

    return-void
.end method
