.class final Lo/ContactReverseSyncResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/ContactReverseSyncResponse;


# direct methods
.method constructor <init>(Lo/ContactReverseSyncResponse;)V
    .locals 0

    iput-object p1, p0, Lo/ContactReverseSyncResponseJsonAdapter;->onMessageChannelReady:Lo/ContactReverseSyncResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/ContactReverseSyncResponseJsonAdapter;->onMessageChannelReady:Lo/ContactReverseSyncResponse;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ContactReverseSyncResponse;->onPostMessage(Lo/ContactReverseSyncResponse;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lo/ContactReverseSyncResponseJsonAdapter;->onMessageChannelReady:Lo/ContactReverseSyncResponse;

    invoke-virtual {v0}, Lo/ContactReverseSyncResponse;->onPostMessage()V

    return-void
.end method
