.class final Lo/getKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Landroid/view/Surface;

.field private final onPostMessage:Lo/getCardExpiry$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/getCardExpiry$onMessageChannelReady;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getKey;->onPostMessage:Lo/getCardExpiry$onMessageChannelReady;

    iput-object p2, p0, Lo/getKey;->extraCallback:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/getKey;->onPostMessage:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v1, p0, Lo/getKey;->extraCallback:Landroid/view/Surface;

    .line 1000
    invoke-virtual {v0, v1}, Lo/getCardExpiry$onMessageChannelReady;->extraCallback(Landroid/view/Surface;)V

    return-void
.end method
