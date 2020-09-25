.class public final Lo/getPaymentMethod;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPaymentMethod$onPostMessage;,
        Lo/getPaymentMethod$extraCallback;,
        Lo/getPaymentMethod$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPaymentMethod$onPostMessage<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field volatile onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/getPaymentMethod$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPaymentMethod$extraCallback;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/getPaymentMethod$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/getPaymentMethod$extraCallback;-><init>(Lo/getPaymentMethod;Landroid/os/Looper;)V

    iput-object v0, p0, Lo/getPaymentMethod;->onNavigationEvent:Lo/getPaymentMethod$extraCallback;

    if-eqz p2, :cond_1

    .line 3
    iput-object p2, p0, Lo/getPaymentMethod;->onMessageChannelReady:Ljava/lang/Object;

    .line 4
    new-instance p1, Lo/getPaymentMethod$onPostMessage;

    .line 2004
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p1, p2, p3}, Lo/getPaymentMethod$onPostMessage;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getPaymentMethod;->ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;

    return-void

    .line 2005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1011
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Listener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lo/getPaymentMethod;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method public final extraCallback(Lo/getPaymentMethod$onMessageChannelReady;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPaymentMethod$onMessageChannelReady<",
            "-T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/getPaymentMethod;->onNavigationEvent:Lo/getPaymentMethod$extraCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lo/getPaymentMethod;->onNavigationEvent:Lo/getPaymentMethod$extraCallback;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onMessageChannelReady()Lo/getPaymentMethod$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getPaymentMethod$onPostMessage<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/getPaymentMethod;->ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;

    return-object v0
.end method
