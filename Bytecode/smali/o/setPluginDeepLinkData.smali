.class public final Lo/setPluginDeepLinkData;
.super Lo/setResolveDeepLinkURLs;
.source ""


# instance fields
.field private final onPostMessage:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/res/Resources;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/setResolveDeepLinkURLs;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V

    .line 28
    iput-object p3, p0, Lo/setPluginDeepLinkData;->onPostMessage:Landroid/content/res/Resources;

    return-void
.end method

.method private ICustomTabsCallback(Lo/getHostPrefix;)I
    .locals 3

    const/4 v0, 0x0

    .line 40
    :try_start_0
    iget-object v1, p0, Lo/setPluginDeepLinkData;->onPostMessage:Landroid/content/res/Resources;

    .line 2150
    iget-object p1, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 2061
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 40
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v1

    if-eqz v0, :cond_0

    .line 47
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    :catch_1
    :cond_1
    throw p1

    :catch_2
    if-eqz v0, :cond_2

    .line 47
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalResourceFetchProducer"

    return-object v0
.end method

.method protected final onMessageChannelReady(Lo/getHostPrefix;)Lo/getCardBackgroundColor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lo/setPluginDeepLinkData;->onPostMessage:Landroid/content/res/Resources;

    .line 1150
    iget-object v1, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 1061
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p1}, Lo/setPluginDeepLinkData;->ICustomTabsCallback(Lo/getHostPrefix;)I

    move-result p1

    .line 33
    invoke-virtual {p0, v0, p1}, Lo/setPluginDeepLinkData;->ICustomTabsCallback(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;

    move-result-object p1

    return-object p1
.end method
