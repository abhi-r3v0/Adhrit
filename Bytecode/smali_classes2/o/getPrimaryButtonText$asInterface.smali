.class public abstract Lo/getPrimaryButtonText$asInterface;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrimaryButtonText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Z

.field private final synthetic onPostMessage:Lo/getPrimaryButtonText;


# direct methods
.method public constructor <init>(Lo/getPrimaryButtonText;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/getPrimaryButtonText$asInterface;->onPostMessage:Lo/getPrimaryButtonText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lo/getPrimaryButtonText$asInterface;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lo/getPrimaryButtonText$asInterface;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 5

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lo/getPrimaryButtonText$asInterface;->ICustomTabsCallback:Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lo/getPrimaryButtonText$asInterface;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    const-string v1, "GmsClient"

    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Callback proxy "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " being reused. This is not safe."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 11
    :try_start_1
    invoke-virtual {p0, v0}, Lo/getPrimaryButtonText$asInterface;->onNavigationEvent(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    throw v0

    .line 17
    :cond_1
    :goto_0
    monitor-enter p0

    const/4 v0, 0x1

    .line 18
    :try_start_2
    iput-boolean v0, p0, Lo/getPrimaryButtonText$asInterface;->onMessageChannelReady:Z

    .line 19
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    invoke-virtual {p0}, Lo/getPrimaryButtonText$asInterface;->extraCallback()V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    .line 9
    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()V
    .locals 2

    .line 1026
    monitor-enter p0

    const/4 v0, 0x0

    .line 1027
    :try_start_0
    iput-object v0, p0, Lo/getPrimaryButtonText$asInterface;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1028
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    iget-object v0, p0, Lo/getPrimaryButtonText$asInterface;->onPostMessage:Lo/getPrimaryButtonText;

    invoke-static {v0}, Lo/getPrimaryButtonText;->zzf(Lo/getPrimaryButtonText;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 24
    :try_start_1
    iget-object v1, p0, Lo/getPrimaryButtonText$asInterface;->onPostMessage:Lo/getPrimaryButtonText;

    invoke-static {v1}, Lo/getPrimaryButtonText;->zzf(Lo/getPrimaryButtonText;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 25
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v0

    .line 1028
    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 26
    monitor-enter p0

    const/4 v0, 0x0

    .line 27
    :try_start_0
    iput-object v0, p0, Lo/getPrimaryButtonText$asInterface;->ICustomTabsCallback:Ljava/lang/Object;

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onNavigationEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation
.end method
