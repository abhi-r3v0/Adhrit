.class public final enum Lo/adjustDropDownSizeAndPosition$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adjustDropDownSizeAndPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/adjustDropDownSizeAndPosition$extraCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/net/info/NetworkInfo$Connectivity;",
        "",
        "serialized",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getSerialized",
        "()Ljava/lang/String;",
        "NETWORK_NOT_CONNECTED",
        "NETWORK_ETHERNET",
        "NETWORK_WIFI",
        "NETWORK_2G",
        "NETWORK_3G",
        "NETWORK_4G",
        "NETWORK_5G",
        "NETWORK_MOBILE_OTHER",
        "NETWORK_CELLULAR",
        "NETWORK_OTHER",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum ICustomTabsCallback$Stub:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field private static final synthetic ICustomTabsCallback$Stub$Proxy:[Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum asBinder:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum asInterface:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum extraCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum onMessageChannelReady:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum onNavigationEvent:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum onPostMessage:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum onRelationshipValidationResult:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public static final enum onTransact:Lo/adjustDropDownSizeAndPosition$extraCallback;


# instance fields
.field public final getInterfaceDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lo/adjustDropDownSizeAndPosition$extraCallback;

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x0

    const-string v3, "NETWORK_NOT_CONNECTED"

    const-string v4, "network_not_connected"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x1

    const-string v3, "NETWORK_ETHERNET"

    const-string v4, "network_ethernet"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->onPostMessage:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x2

    const-string v3, "NETWORK_WIFI"

    const-string v4, "network_wifi"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->extraCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x3

    const-string v3, "NETWORK_2G"

    const-string v4, "network_2g"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->onNavigationEvent:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x4

    const-string v3, "NETWORK_3G"

    const-string v4, "network_3g"

    .line 23
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->onMessageChannelReady:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x5

    const-string v3, "NETWORK_4G"

    const-string v4, "network_4g"

    .line 24
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback$Stub:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x6

    const-string v3, "NETWORK_5G"

    const-string v4, "network_5g"

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->asInterface:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x7

    const-string v3, "NETWORK_MOBILE_OTHER"

    const-string v4, "network_mobile_other"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->onTransact:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/16 v2, 0x8

    const-string v3, "NETWORK_CELLULAR"

    const-string v4, "network_cellular"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->onRelationshipValidationResult:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    new-instance v1, Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/16 v2, 0x9

    const-string v3, "NETWORK_OTHER"

    const-string v4, "network_other"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lo/adjustDropDownSizeAndPosition$extraCallback;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->asBinder:Lo/adjustDropDownSizeAndPosition$extraCallback;

    aput-object v1, v0, v2

    sput-object v0, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback$Stub$Proxy:[Lo/adjustDropDownSizeAndPosition$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lo/adjustDropDownSizeAndPosition$extraCallback;->getInterfaceDescriptor:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/adjustDropDownSizeAndPosition$extraCallback;
    .locals 1

    const-class v0, Lo/adjustDropDownSizeAndPosition$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/adjustDropDownSizeAndPosition$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/adjustDropDownSizeAndPosition$extraCallback;
    .locals 1

    sget-object v0, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback$Stub$Proxy:[Lo/adjustDropDownSizeAndPosition$extraCallback;

    invoke-virtual {v0}, [Lo/adjustDropDownSizeAndPosition$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/adjustDropDownSizeAndPosition$extraCallback;

    return-object v0
.end method
