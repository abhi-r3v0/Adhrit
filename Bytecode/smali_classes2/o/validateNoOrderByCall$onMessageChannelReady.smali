.class abstract Lo/validateNoOrderByCall$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/validateNoOrderByCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field protected extraCallback:Z

.field private synthetic onNavigationEvent:Lo/validateNoOrderByCall;

.field private onPostMessage:Lo/buildLogMessage;


# direct methods
.method private constructor <init>(Lo/validateNoOrderByCall;)V
    .locals 1

    .line 343
    iput-object p1, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance p1, Lo/buildLogMessage;

    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 1061
    iget-object v0, v0, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 344
    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/buildLogMessage;-><init>(Lo/logsDebug;)V

    iput-object p1, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onPostMessage:Lo/buildLogMessage;

    return-void
.end method

.method synthetic constructor <init>(Lo/validateNoOrderByCall;B)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lo/validateNoOrderByCall$onMessageChannelReady;-><init>(Lo/validateNoOrderByCall;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 348
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onPostMessage:Lo/buildLogMessage;

    return-object v0
.end method

.method protected final onMessageChannelReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 2061
    iget v0, v0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onPostMessage:Lo/buildLogMessage;

    invoke-static {v0}, Lo/validateNoOrderByCall;->extraCallback(Lo/buildLogMessage;)V

    .line 360
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    const/4 v1, 0x6

    .line 4061
    iput v1, v0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 361
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 5061
    iget-object v0, v0, Lo/validateNoOrderByCall;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 6061
    iget-object v0, v0, Lo/validateNoOrderByCall;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    .line 362
    iget-object v1, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    invoke-virtual {v0, v1}, Lo/setLogger$extraCallback$extraCallback;->ICustomTabsCallback(Lo/addChildEventListener;)V

    :cond_0
    return-void

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 3061
    iget v2, v2, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final onPostMessage()V
    .locals 3

    .line 367
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 7061
    iget v0, v0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 8061
    iput v1, v0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 370
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 9061
    iget-object v0, v0, Lo/validateNoOrderByCall;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 10061
    iget-object v0, v0, Lo/validateNoOrderByCall;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10220
    invoke-virtual {v0, v1, v2, v2}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    .line 372
    iget-object v0, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    .line 11061
    iget-object v0, v0, Lo/validateNoOrderByCall;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    .line 372
    iget-object v1, p0, Lo/validateNoOrderByCall$onMessageChannelReady;->onNavigationEvent:Lo/validateNoOrderByCall;

    invoke-virtual {v0, v1}, Lo/setLogger$extraCallback$extraCallback;->ICustomTabsCallback(Lo/addChildEventListener;)V

    :cond_1
    return-void
.end method
