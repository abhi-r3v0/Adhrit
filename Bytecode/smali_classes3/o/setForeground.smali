.class final Lo/setForeground;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Ljava/lang/Runnable;

.field private final synthetic onMessageChannelReady:Lo/setHint;


# direct methods
.method constructor <init>(Lo/FloatingActionButton$Behavior;Lo/setHint;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo/setForeground;->onMessageChannelReady:Lo/setHint;

    iput-object p3, p0, Lo/setForeground;->extraCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setForeground;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 3
    iget-object v0, p0, Lo/setForeground;->onMessageChannelReady:Lo/setHint;

    iget-object v1, p0, Lo/setForeground;->extraCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/setHint;->onPostMessage(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lo/setForeground;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->ICustomTabsService()V

    return-void
.end method
