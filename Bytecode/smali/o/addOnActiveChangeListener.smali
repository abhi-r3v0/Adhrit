.class public abstract Lo/addOnActiveChangeListener;
.super Lo/getCurrentControllerInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/addOnActiveChangeListener$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getCurrentControllerInfo<",
        "TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addOnActiveChangeListener<",
            "TD;>.extraCallback;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Lo/addOnActiveChangeListener$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addOnActiveChangeListener<",
            "TD;>.extraCallback;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 128
    sget-object v0, Lo/ensureClassLoader;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lo/addOnActiveChangeListener;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 132
    invoke-direct {p0, p1}, Lo/getCurrentControllerInfo;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 124
    iput-wide v0, p0, Lo/addOnActiveChangeListener;->mLastLoadCompleteTime:J

    .line 133
    iput-object p2, p0, Lo/addOnActiveChangeListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    return-void
.end method

.method dispatchOnCancelled(Lo/addOnActiveChangeListener$extraCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addOnActiveChangeListener<",
            "TD;>.extraCallback;TD;)V"
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p2}, Lo/addOnActiveChangeListener;->onCanceled(Ljava/lang/Object;)V

    .line 234
    iget-object p2, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    if-ne p2, p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->rollbackContentChanged()V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/addOnActiveChangeListener;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    .line 240
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->deliverCancellation()V

    .line 241
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->executePendingTask()V

    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Lo/addOnActiveChangeListener$extraCallback;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addOnActiveChangeListener<",
            "TD;>.extraCallback;TD;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    if-eq v0, p1, :cond_0

    .line 248
    invoke-virtual {p0, p1, p2}, Lo/addOnActiveChangeListener;->dispatchOnCancelled(Lo/addOnActiveChangeListener$extraCallback;Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->isAbandoned()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p0, p2}, Lo/addOnActiveChangeListener;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->commitContentChanged()V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/addOnActiveChangeListener;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    .line 258
    invoke-virtual {p0, p2}, Lo/addOnActiveChangeListener;->deliverResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Lo/getCurrentControllerInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    .line 358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iget-boolean p2, p2, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 361
    :cond_0
    iget-object p2, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    if-eqz p2, :cond_1

    .line 362
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    iget-boolean p2, p2, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 365
    :cond_1
    iget-wide v0, p0, Lo/addOnActiveChangeListener;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-wide p1, p0, Lo/addOnActiveChangeListener;->mUpdateThrottle:J

    invoke-static {p1, p2, p3}, Lo/onEvent;->ICustomTabsCallback(JLjava/io/PrintWriter;)V

    const-string p1, " mLastLoadCompleteTime="

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-wide p1, p0, Lo/addOnActiveChangeListener;->mLastLoadCompleteTime:J

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 369
    invoke-static {p1, p2, v0, v1, p3}, Lo/onEvent;->onPostMessage(JJLjava/io/PrintWriter;)V

    .line 371
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 6

    .line 210
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iget-boolean v0, v0, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    .line 213
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_0
    iget-wide v0, p0, Lo/addOnActiveChangeListener;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 217
    iget-wide v2, p0, Lo/addOnActiveChangeListener;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lo/addOnActiveChangeListener;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 222
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    .line 223
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iget-wide v2, p0, Lo/addOnActiveChangeListener;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lo/addOnActiveChangeListener;->mUpdateThrottle:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iget-object v1, p0, Lo/addOnActiveChangeListener;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lo/ensureClassLoader;

    :cond_2
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 4

    .line 162
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 163
    iget-boolean v0, p0, Lo/addOnActiveChangeListener;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lo/addOnActiveChangeListener;->mContentChanged:Z

    .line 166
    :cond_0
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iget-boolean v0, v0, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iput-boolean v1, v0, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    .line 173
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :cond_1
    iput-object v2, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    return v1

    .line 177
    :cond_2
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iget-boolean v0, v0, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iput-boolean v1, v0, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent:Z

    .line 182
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iput-object v2, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    return v1

    .line 186
    :cond_3
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    invoke-virtual {v0, v1}, Lo/addOnActiveChangeListener$extraCallback;->onMessageChannelReady(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iget-object v1, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    iput-object v1, p0, Lo/addOnActiveChangeListener;->mCancellingTask:Lo/addOnActiveChangeListener$extraCallback;

    .line 190
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->cancelLoadInBackground()V

    .line 192
    :cond_4
    iput-object v2, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    return v0

    :cond_5
    return v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public onForceLoad()V
    .locals 1

    .line 152
    invoke-super {p0}, Lo/getCurrentControllerInfo;->onForceLoad()V

    .line 153
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->cancelLoad()Z

    .line 154
    new-instance v0, Lo/addOnActiveChangeListener$extraCallback;

    invoke-direct {v0, p0}, Lo/addOnActiveChangeListener$extraCallback;-><init>(Lo/addOnActiveChangeListener;)V

    iput-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    .line 156
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->executePendingTask()V

    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lo/addOnActiveChangeListener;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 3

    .line 144
    iput-wide p1, p0, Lo/addOnActiveChangeListener;->mUpdateThrottle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/addOnActiveChangeListener;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .line 347
    iget-object v0, p0, Lo/addOnActiveChangeListener;->mTask:Lo/addOnActiveChangeListener$extraCallback;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lo/addOnActiveChangeListener$extraCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method
