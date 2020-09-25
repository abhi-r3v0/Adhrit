.class final Lo/EmailJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPrimaryButtonText$extraCallback;


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getAmount_refunded$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/EmailJsonAdapter;->ICustomTabsCallback:Lo/getAmount_refunded$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/EmailJsonAdapter;->ICustomTabsCallback:Lo/getAmount_refunded$onMessageChannelReady;

    iget-object v0, v0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    invoke-static {v0}, Lo/getAmount_refunded;->extraCallback(Lo/getAmount_refunded;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/Email;

    invoke-direct {v1, p0}, Lo/Email;-><init>(Lo/EmailJsonAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
