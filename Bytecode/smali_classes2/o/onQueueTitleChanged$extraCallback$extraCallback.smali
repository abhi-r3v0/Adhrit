.class Lo/onQueueTitleChanged$extraCallback$extraCallback;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onQueueTitleChanged$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;


# direct methods
.method constructor <init>(Lo/onQueueTitleChanged$extraCallback;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lo/onQueueTitleChanged$extraCallback;Landroid/os/Handler;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    .line 108
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 124
    iget-object p1, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    iget-object p1, p1, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    iget-boolean p1, p1, Lo/onQueueTitleChanged$extraCallback;->onPostMessage:Z

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    iget-object p1, p1, Lo/onQueueTitleChanged$extraCallback;->onNavigationEvent:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    iget-object v0, v0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    invoke-interface {p1, v0}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    iput-boolean v1, p1, Lo/onQueueTitleChanged$extraCallback;->ICustomTabsCallback:Z

    :cond_1
    return-void

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown message "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    iget-object p1, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    invoke-virtual {p1}, Lo/onQueueTitleChanged$extraCallback;->onPostMessage()V

    return-void

    .line 115
    :cond_4
    iget-object p1, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    iget-object p1, p1, Lo/onQueueTitleChanged$extraCallback;->onMessageChannelReady:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v0, p0, Lo/onQueueTitleChanged$extraCallback$extraCallback;->ICustomTabsCallback:Lo/onQueueTitleChanged$extraCallback;

    iget-object v0, v0, Lo/onQueueTitleChanged$extraCallback;->extraCallback:Landroid/view/MotionEvent;

    invoke-interface {p1, v0}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method
