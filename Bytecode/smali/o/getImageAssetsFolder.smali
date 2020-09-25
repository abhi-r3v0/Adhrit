.class public Lo/getImageAssetsFolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addAnimatorListener;


# static fields
.field private static final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Z

.field private onMessageChannelReady:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/setApplyingOpacityToLayersEnabled;

.field private final onPostMessage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lo/getImageAssetsFolder;

    sput-object v0, Lo/getImageAssetsFolder;->extraCallback:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/setApplyingOpacityToLayersEnabled;Z)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/getImageAssetsFolder;->onNavigationEvent:Lo/setApplyingOpacityToLayersEnabled;

    .line 44
    iput-boolean p2, p0, Lo/getImageAssetsFolder;->ICustomTabsCallback:Z

    .line 45
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    return-void
.end method

.method private static extraCallback(Lo/getRootAlpha;)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;)",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 187
    :try_start_0
    invoke-static {p0}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo/onAppLinkFetchFailed;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onAppLinkFetchFailed;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lo/onAppLinkFetchFailed;->asInterface()Lo/getRootAlpha;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v0
.end method

.method private declared-synchronized onPostMessage(I)V
    .locals 3

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    .line 163
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRootAlpha;

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 166
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 167
    sget-object v0, Lo/getImageAssetsFolder;->extraCallback:Ljava/lang/Class;

    const-string v1, "removePreparedReference(%d) removed. Pending frames: %s"

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    .line 167
    invoke-static {v0, v1, p1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()Lo/getRootAlpha;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lo/getImageAssetsFolder;->ICustomTabsCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    monitor-exit p0

    return-object v1

    .line 69
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/getImageAssetsFolder;->onNavigationEvent:Lo/setApplyingOpacityToLayersEnabled;

    .line 2149
    :cond_1
    invoke-virtual {v0}, Lo/setApplyingOpacityToLayersEnabled;->extraCallback()Lo/invalidateSpanInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 2153
    :cond_2
    iget-object v3, v0, Lo/setApplyingOpacityToLayersEnabled;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    invoke-virtual {v3, v2}, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback(Ljava/lang/Object;)Lo/getRootAlpha;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 69
    :goto_0
    invoke-static {v1}, Lo/getImageAssetsFolder;->extraCallback(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ICustomTabsCallback(I)Z
    .locals 3

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lo/getImageAssetsFolder;->onNavigationEvent:Lo/setApplyingOpacityToLayersEnabled;

    .line 3134
    iget-object v1, v0, Lo/setApplyingOpacityToLayersEnabled;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 3172
    new-instance v2, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;

    iget-object v0, v0, Lo/setApplyingOpacityToLayersEnabled;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-direct {v2, v0, p1}, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;-><init>(Lo/invalidateSpanInfo;I)V

    .line 3134
    invoke-virtual {v1, v2}, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(ILo/getRootAlpha;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 4225
    :try_start_0
    new-instance v1, Lo/onAppLinkFetchFailed;

    sget-object v2, Lo/ı;->ICustomTabsCallback:Lo/AFKeystoreWrapper;

    invoke-direct {v1, p2, v2}, Lo/onAppLinkFetchFailed;-><init>(Lo/getRootAlpha;Lo/AFKeystoreWrapper;)V

    .line 4227
    invoke-static {v1}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 144
    :try_start_1
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_2
    iget-object p2, p0, Lo/getImageAssetsFolder;->onNavigationEvent:Lo/setApplyingOpacityToLayersEnabled;

    .line 5117
    iget-object v1, p2, Lo/setApplyingOpacityToLayersEnabled;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 5172
    new-instance v2, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;

    iget-object v3, p2, Lo/setApplyingOpacityToLayersEnabled;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-direct {v2, v3, p1}, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;-><init>(Lo/invalidateSpanInfo;I)V

    .line 5117
    iget-object p2, p2, Lo/setApplyingOpacityToLayersEnabled;->ICustomTabsCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    invoke-virtual {v1, v2, v0, p2}, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)Lo/getRootAlpha;

    move-result-object p2

    .line 131
    invoke-static {p2}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getRootAlpha;

    .line 133
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 136
    iget-object v1, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object p2, Lo/getImageAssetsFolder;->extraCallback:Ljava/lang/Class;

    const-string v1, "cachePreparedFrame(%d) cached. Pending frames: %s"

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    .line 137
    invoke-static {p2, v1, p1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_1
    :try_start_3
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 144
    :try_start_4
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1

    .line 4215
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(I)Lo/getRootAlpha;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lo/getImageAssetsFolder;->onNavigationEvent:Lo/setApplyingOpacityToLayersEnabled;

    .line 1127
    iget-object v1, v0, Lo/setApplyingOpacityToLayersEnabled;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 1172
    new-instance v2, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;

    iget-object v0, v0, Lo/setApplyingOpacityToLayersEnabled;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-direct {v2, v0, p1}, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;-><init>(Lo/invalidateSpanInfo;I)V

    .line 1127
    invoke-virtual {v1, v2}, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lo/getImageAssetsFolder;->extraCallback(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady()V
    .locals 2

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/getImageAssetsFolder;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lo/getImageAssetsFolder;->onMessageChannelReady:Lo/getRootAlpha;

    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v1, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getRootAlpha;

    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lo/getImageAssetsFolder;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent()Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lo/getImageAssetsFolder;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0

    invoke-static {v0}, Lo/getImageAssetsFolder;->extraCallback(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent(ILo/getRootAlpha;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lo/getImageAssetsFolder;->onPostMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 3225
    :try_start_1
    new-instance v1, Lo/onAppLinkFetchFailed;

    sget-object v2, Lo/ı;->ICustomTabsCallback:Lo/AFKeystoreWrapper;

    invoke-direct {v1, p2, v2}, Lo/onAppLinkFetchFailed;-><init>(Lo/getRootAlpha;Lo/AFKeystoreWrapper;)V

    .line 3227
    invoke-static {v1}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p2, p0, Lo/getImageAssetsFolder;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {p2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 110
    iget-object p2, p0, Lo/getImageAssetsFolder;->onNavigationEvent:Lo/setApplyingOpacityToLayersEnabled;

    .line 4117
    iget-object v1, p2, Lo/setApplyingOpacityToLayersEnabled;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 4172
    new-instance v2, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;

    iget-object v3, p2, Lo/setApplyingOpacityToLayersEnabled;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-direct {v2, v3, p1}, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;-><init>(Lo/invalidateSpanInfo;I)V

    .line 4117
    iget-object p1, p2, Lo/setApplyingOpacityToLayersEnabled;->ICustomTabsCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    invoke-virtual {v1, v2, v0, p1}, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)Lo/getRootAlpha;

    move-result-object p1

    .line 110
    iput-object p1, p0, Lo/getImageAssetsFolder;->onMessageChannelReady:Lo/getRootAlpha;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_0
    :try_start_2
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 113
    :try_start_3
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_0

    .line 3215
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    throw p1
.end method
