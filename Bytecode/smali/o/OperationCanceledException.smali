.class public final Lo/OperationCanceledException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CustomVersionedParcelable;


# static fields
.field public static extraCallback:Landroid/app/Application;

.field public static onNavigationEvent:Lo/checkCompatWrapper;

.field public static onPostMessage:Lo/instantiateProvider;


# instance fields
.field private final ICustomTabsCallback:Lo/setTitleMarginTop$ICustomTabsCallback;

.field private final onMessageChannelReady:Lo/getVersionName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getVersionName;Lo/setTitleMarginTop$ICustomTabsCallback;)V
    .locals 0

    .line 2030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2031
    iput-object p1, p0, Lo/OperationCanceledException;->onMessageChannelReady:Lo/getVersionName;

    .line 2032
    iput-object p2, p0, Lo/OperationCanceledException;->ICustomTabsCallback:Lo/setTitleMarginTop$ICustomTabsCallback;

    return-void
.end method

.method private extraCallback(Ljava/io/InputStream;I)Lo/getVersionCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5073
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/OperationCanceledException;->onMessageChannelReady:Lo/getVersionName;

    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/getVersionName;I)V

    .line 5076
    :try_start_0
    invoke-direct {p0, p1, v0}, Lo/OperationCanceledException;->onPostMessage(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lo/getVersionCode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5078
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method private extraCallback([B)Lo/getVersionCode;
    .locals 3

    .line 2058
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/OperationCanceledException;->onMessageChannelReady:Lo/getVersionName;

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/getVersionName;I)V

    const/4 v1, 0x0

    .line 2061
    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3156
    iget-object p1, v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3064
    new-instance p1, Lo/getVersionCode;

    iget-object v1, v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    iget v2, v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    invoke-direct {p1, v1, v2}, Lo/getVersionCode;-><init>(Lo/getRootAlpha;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2066
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-object p1

    .line 3157
    :cond_0
    :try_start_1
    new-instance p1, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4151
    :try_start_2
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 4152
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2066
    :goto_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method private onMessageChannelReady(Ljava/io/InputStream;)Lo/getVersionCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2048
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/OperationCanceledException;->onMessageChannelReady:Lo/getVersionName;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/getVersionName;)V

    .line 2050
    :try_start_0
    invoke-direct {p0, p1, v0}, Lo/OperationCanceledException;->onPostMessage(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lo/getVersionCode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2052
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method private onPostMessage(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lo/getVersionCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5095
    iget-object v0, p0, Lo/OperationCanceledException;->ICustomTabsCallback:Lo/setTitleMarginTop$ICustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lo/setTitleMarginTop$ICustomTabsCallback;->ICustomTabsCallback(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 6156
    iget-object p1, p2, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6064
    new-instance p1, Lo/getVersionCode;

    iget-object v0, p2, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    iget p2, p2, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    invoke-direct {p1, v0, p2}, Lo/getVersionCode;-><init>(Lo/getRootAlpha;I)V

    return-object p1

    .line 6157
    :cond_0
    new-instance p1, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw p1
.end method

.method public static onPostMessage(Lo/checkCompatWrapper;)V
    .locals 4

    .line 69
    sput-object p0, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    .line 1088
    sget-object v0, Lo/OperationCanceledException;->extraCallback:Landroid/app/Application;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "com.dreamplug.auth"

    .line 1084
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-interface {p0}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_session_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {p0}, Lo/checkCompatWrapper;->getExpiryTimeStamp()J

    move-result-wide v1

    const-string v3, "auth_session_expiry"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {p0}, Lo/checkCompatWrapper;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {p0}, Lo/checkCompatWrapper;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_refresh_token"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    invoke-static {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->extraCallback(Lo/checkCompatWrapper;)V

    return-void

    .line 1091
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Have you called Authenticator.init(Context context) first?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(I)Lo/setRootAlpha;
    .locals 2

    .line 7106
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/OperationCanceledException;->onMessageChannelReady:Lo/getVersionName;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/getVersionName;I)V

    return-object v0
.end method

.method public final synthetic extraCallback(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11024
    invoke-direct {p0, p1}, Lo/OperationCanceledException;->onMessageChannelReady(Ljava/io/InputStream;)Lo/getVersionCode;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic extraCallback()Lo/setRootAlpha;
    .locals 2

    .line 8101
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/OperationCanceledException;->onMessageChannelReady:Lo/getVersionName;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/getVersionName;)V

    return-object v0
.end method

.method public final synthetic onPostMessage(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9024
    invoke-direct {p0, p1, p2}, Lo/OperationCanceledException;->extraCallback(Ljava/io/InputStream;I)Lo/getVersionCode;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostMessage([B)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 10024
    invoke-direct {p0, p1}, Lo/OperationCanceledException;->extraCallback([B)Lo/getVersionCode;

    move-result-object p1

    return-object p1
.end method
