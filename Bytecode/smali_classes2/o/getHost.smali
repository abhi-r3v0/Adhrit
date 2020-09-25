.class public final Lo/getHost;
.super Lo/requireHost;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/setCurrentControllerInfo;

.field final extraCallback:Lo/requireFragmentManager;

.field private final onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/getActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lo/requireHost;-><init>()V

    .line 23
    new-instance v0, Lo/requireFragmentManager;

    invoke-direct {v0}, Lo/requireFragmentManager;-><init>()V

    iput-object v0, p0, Lo/getHost;->extraCallback:Lo/requireFragmentManager;

    .line 26
    iput-object p1, p0, Lo/getHost;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 27
    new-instance v0, Lo/getHost$2;

    invoke-direct {v0, p0, p1}, Lo/getHost$2;-><init>(Lo/getHost;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/getHost;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getActivity;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/getHost;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 66
    iget-object v0, p0, Lo/getHost;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 1351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 1353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 68
    :try_start_0
    iget-object v0, p0, Lo/getHost;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->ICustomTabsCallback(Ljava/lang/Iterable;)V

    .line 69
    iget-object p1, p0, Lo/getHost;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object p1, p0, Lo/getHost;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/getHost;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 72
    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/getActivity;
    .locals 8

    const/4 v0, 0x1

    const-string v1, "SELECT `BackgroundAssetsEntity`.`id` AS `id`, `BackgroundAssetsEntity`.`type` AS `type`, `BackgroundAssetsEntity`.`colors` AS `colors`, `BackgroundAssetsEntity`.`direction` AS `direction` FROM BackgroundAssetsEntity where id is ?"

    .line 78
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 2251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 2252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 85
    :goto_0
    iget-object p1, p0, Lo/getHost;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 86
    iget-object p1, p0, Lo/getHost;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 3323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 3324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 3328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "id"

    .line 88
    invoke-static {p1, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "type"

    .line 89
    invoke-static {p1, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "colors"

    .line 90
    invoke-static {p1, v3}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "direction"

    .line 91
    invoke-static {p1, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 93
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 95
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v6

    goto :goto_1

    .line 100
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    :goto_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    iget-object v5, p0, Lo/getHost;->extraCallback:Lo/requireFragmentManager;

    const-string v7, "value"

    invoke-static {v3, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v5, v5, Lo/requireFragmentManager;->extraCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/JniNativeApi;

    .line 4017
    invoke-virtual {v5, v3}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast v3, Ljava/util/List;

    .line 108
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 111
    :cond_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 113
    :goto_2
    invoke-static {v6}, Lo/requireFragmentManager;->onMessageChannelReady(Ljava/lang/Integer;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v4

    .line 114
    new-instance v6, Lo/getActivity;

    invoke-direct {v6, v0, v2, v3, v4}, Lo/getActivity;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 121
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v6

    :catchall_0
    move-exception v0

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 121
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 122
    throw v0
.end method
