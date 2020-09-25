.class final Lo/StatementResponse$CardDetails$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatementResponse$CardDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/StatementResponse$CardDetails$onMessageChannelReady;


# instance fields
.field public volatile ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:I

.field private final extraCallback:Landroid/os/Handler;

.field private final onMessageChannelReady:Landroid/os/HandlerThread;

.field private onPostMessage:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 278
    new-instance v0, Lo/StatementResponse$CardDetails$onMessageChannelReady;

    invoke-direct {v0}, Lo/StatementResponse$CardDetails$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onNavigationEvent:Lo/StatementResponse$CardDetails$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 290
    iput-wide v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->ICustomTabsCallback:J

    .line 291
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onMessageChannelReady:Landroid/os/HandlerThread;

    .line 292
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 293
    iget-object v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onMessageChannelReady:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 294
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 2

    .line 345
    iget v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onPostMessage:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public static extraCallback()Lo/StatementResponse$CardDetails$onMessageChannelReady;
    .locals 1

    .line 286
    sget-object v0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onNavigationEvent:Lo/StatementResponse$CardDetails$onMessageChannelReady;

    return-object v0
.end method

.method private onMessageChannelReady()V
    .locals 1

    .line 341
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onPostMessage:Landroid/view/Choreographer;

    return-void
.end method

.method private onTransact()V
    .locals 2

    .line 352
    iget v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onPostMessage:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 355
    iput-wide v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->ICustomTabsCallback:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 315
    iput-wide p1, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->ICustomTabsCallback:J

    .line 316
    iget-object p1, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onPostMessage:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 321
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 331
    :cond_0
    invoke-direct {p0}, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onTransact()V

    return v0

    .line 327
    :cond_1
    invoke-direct {p0}, Lo/StatementResponse$CardDetails$onMessageChannelReady;->ICustomTabsCallback()V

    return v0

    .line 323
    :cond_2
    invoke-direct {p0}, Lo/StatementResponse$CardDetails$onMessageChannelReady;->onMessageChannelReady()V

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 302
    iget-object v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 310
    iget-object v0, p0, Lo/StatementResponse$CardDetails$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
