.class public final Lo/initIndeterminateProgress;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasDividerBeforeChildAt;


# instance fields
.field public final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ListPopupWindow<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 1017
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/initIndeterminateProgress;->onMessageChannelReady:Ljava/util/Set;

    return-void
.end method

.method static onNavigationEvent()I
    .locals 5

    const-string v0, "GlideRuntimeCompat"

    .line 45
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 47
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "cpu[0-9]+"

    .line 48
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 49
    new-instance v4, Lo/initIndeterminateProgress$4;

    invoke-direct {v4, v3}, Lo/initIndeterminateProgress$4;-><init>(Ljava/util/regex/Pattern;)V

    .line 50
    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x6

    .line 58
    :try_start_1
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Failed to calculate accurate cpu count"

    .line 59
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    :cond_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 64
    array-length v0, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    .line 62
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 1029
    iget-object v0, p0, Lo/initIndeterminateProgress;->onMessageChannelReady:Ljava/util/Set;

    invoke-static {v0}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ListPopupWindow;

    .line 1030
    invoke-interface {v1}, Lo/ListPopupWindow;->ICustomTabsCallback()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback()V
    .locals 2

    .line 1036
    iget-object v0, p0, Lo/initIndeterminateProgress;->onMessageChannelReady:Ljava/util/Set;

    invoke-static {v0}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ListPopupWindow;

    .line 1037
    invoke-interface {v1}, Lo/ListPopupWindow;->extraCallback()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 1043
    iget-object v0, p0, Lo/initIndeterminateProgress;->onMessageChannelReady:Ljava/util/Set;

    invoke-static {v0}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ListPopupWindow;

    .line 1044
    invoke-interface {v1}, Lo/ListPopupWindow;->onMessageChannelReady()V

    goto :goto_0

    :cond_0
    return-void
.end method
