.class final Lo/getBureauEmail;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onPostMessage:Lo/getAmount_refunded$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getBureauEmail;->onPostMessage:Lo/getAmount_refunded$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/getBureauEmail;->onPostMessage:Lo/getAmount_refunded$onMessageChannelReady;

    invoke-static {v0}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent(Lo/getAmount_refunded$onMessageChannelReady;)V

    return-void
.end method
