.class final Lo/updateChildrenInternal$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateChildrenInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/updateChildrenInternal;


# direct methods
.method constructor <init>(Lo/updateChildrenInternal;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/updateChildrenInternal$1;->extraCallback:Lo/updateChildrenInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 170
    iget-object v0, p0, Lo/updateChildrenInternal$1;->extraCallback:Lo/updateChildrenInternal;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lo/updateChildrenInternal$1;->extraCallback:Lo/updateChildrenInternal;

    invoke-static {v1}, Lo/updateChildrenInternal;->onPostMessage(Lo/updateChildrenInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/updateChildrenInternal$1;->extraCallback:Lo/updateChildrenInternal;

    invoke-static {v2}, Lo/updateChildrenInternal;->onNavigationEvent(Lo/updateChildrenInternal;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 175
    :cond_1
    :try_start_1
    iget-object v1, p0, Lo/updateChildrenInternal$1;->extraCallback:Lo/updateChildrenInternal;

    invoke-static {v1}, Lo/updateChildrenInternal;->ICustomTabsCallback(Lo/updateChildrenInternal;)V

    .line 176
    iget-object v1, p0, Lo/updateChildrenInternal$1;->extraCallback:Lo/updateChildrenInternal;

    invoke-static {v1}, Lo/updateChildrenInternal;->extraCallback(Lo/updateChildrenInternal;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lo/updateChildrenInternal$1;->extraCallback:Lo/updateChildrenInternal;

    invoke-static {v1}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal;)V

    .line 178
    iget-object v1, p0, Lo/updateChildrenInternal$1;->extraCallback:Lo/updateChildrenInternal;

    invoke-static {v1}, Lo/updateChildrenInternal;->asInterface(Lo/updateChildrenInternal;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_2
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 181
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 183
    monitor-exit v0

    throw v1
.end method
