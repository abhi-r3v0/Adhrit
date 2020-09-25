.class public final Lo/add$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/add;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/upi/commandmanager/UpiCommandManager$RetryStrategy;",
        "",
        "retryCount",
        "",
        "retryChecker",
        "Lkotlin/Function1;",
        "Lorg/json/JSONObject;",
        "",
        "(ILkotlin/jvm/functions/Function1;)V",
        "getRetryChecker",
        "()Lkotlin/jvm/functions/Function1;",
        "getRetryCount",
        "()I",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final onMessageChannelReady:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:I


# direct methods
.method public constructor <init>(ILo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "retryChecker"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/add$ICustomTabsCallback;->onPostMessage:I

    iput-object p2, p0, Lo/add$ICustomTabsCallback;->onMessageChannelReady:Lo/onDisconnectSetValue;

    return-void
.end method
