.class public final Lo/dismiss;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0006\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cred/pay/repository/config/PayConfig;",
        "",
        "()V",
        "JUSPAY_CLIENT_ID",
        "",
        "juspayMerchantId",
        "getJuspayMerchantId",
        "()Ljava/lang/String;",
        "setJuspayMerchantId",
        "(Ljava/lang/String;)V",
        "justPayEnvironment",
        "getJustPayEnvironment",
        "setJustPayEnvironment",
        "safetyNetApiKey",
        "getSafetyNetApiKey",
        "setSafetyNetApiKey",
        "vscLimit",
        "",
        "getVscLimit",
        "()D",
        "setVscLimit",
        "(D)V",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Ljava/lang/String;

.field private static extraCallback:D

.field private static onMessageChannelReady:Ljava/lang/String;

.field public static final onNavigationEvent:Lo/dismiss;

.field private static onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3
    new-instance v0, Lo/dismiss;

    invoke-direct {v0}, Lo/dismiss;-><init>()V

    sput-object v0, Lo/dismiss;->onNavigationEvent:Lo/dismiss;

    const-wide v0, 0x409f400000000000L    # 2000.0

    .line 4
    sput-wide v0, Lo/dismiss;->extraCallback:D

    const-string v0, "dreamplug_direct"

    .line 7
    sput-object v0, Lo/dismiss;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v0, "sandbox"

    .line 8
    sput-object v0, Lo/dismiss;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lo/dismiss;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sput-object p0, Lo/dismiss;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public static extraCallback()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lo/dismiss;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static extraCallback(D)V
    .locals 0

    .line 4
    sput-wide p0, Lo/dismiss;->extraCallback:D

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;)V
    .locals 0

    .line 5
    sput-object p0, Lo/dismiss;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public static onMessageChannelReady()D
    .locals 2

    .line 4
    sget-wide v0, Lo/dismiss;->extraCallback:D

    return-wide v0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sput-object p0, Lo/dismiss;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public static onPostMessage()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lo/dismiss;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method
