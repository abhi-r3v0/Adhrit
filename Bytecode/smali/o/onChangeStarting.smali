.class public final Lo/onChangeStarting;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiSdkData;",
        "",
        "()V",
        "upiData",
        "Lcom/dreamplug/upi/UpiData;",
        "getUpiData",
        "()Lcom/dreamplug/upi/UpiData;",
        "setUpiData",
        "(Lcom/dreamplug/upi/UpiData;)V",
        "updateData",
        "",
        "data",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lcom/dreamplug/upi/UpiData;

.field public static final onPostMessage:Lo/onChangeStarting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/onChangeStarting;

    invoke-direct {v0}, Lo/onChangeStarting;-><init>()V

    sput-object v0, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lcom/dreamplug/upi/UpiData;
    .locals 1

    .line 9
    sget-object v0, Lo/onChangeStarting;->onMessageChannelReady:Lcom/dreamplug/upi/UpiData;

    return-object v0
.end method

.method public static onMessageChannelReady(Lcom/dreamplug/upi/UpiData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sput-object p0, Lo/onChangeStarting;->onMessageChannelReady:Lcom/dreamplug/upi/UpiData;

    return-void
.end method
