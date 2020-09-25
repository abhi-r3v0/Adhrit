.class final Lo/is_verified;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RefundAccount$ICustomTabsCallback;


# instance fields
.field private final synthetic onPostMessage:Lo/getAmount_refunded;


# direct methods
.method constructor <init>(Lo/getAmount_refunded;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/is_verified;->onPostMessage:Lo/getAmount_refunded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/is_verified;->onPostMessage:Lo/getAmount_refunded;

    invoke-static {v0}, Lo/getAmount_refunded;->extraCallback(Lo/getAmount_refunded;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/is_verified;->onPostMessage:Lo/getAmount_refunded;

    .line 3
    invoke-static {v1}, Lo/getAmount_refunded;->extraCallback(Lo/getAmount_refunded;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
