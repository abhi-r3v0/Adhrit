.class public abstract Lo/toKeyCode;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ICustomTabsCallback:Landroid/database/DataSetObserver;

.field public final extraCallback:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lo/toKeyCode;->extraCallback:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public ICustomTabsCallback()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract extraCallback()I
.end method

.method public extraCallback(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1184
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method instantiateItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extraCallback(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1202
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method destroyItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMessageChannelReady(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public abstract onMessageChannelReady(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lo/toKeyCode;->ICustomTabsCallback:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lo/toKeyCode;->ICustomTabsCallback:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 293
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v0, p0, Lo/toKeyCode;->extraCallback:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void

    :catchall_0
    move-exception v0

    .line 293
    monitor-exit p0

    throw v0
.end method

.method public onNavigationEvent(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public onPostMessage()V
    .locals 0

    return-void
.end method

.method public onPostMessage(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
