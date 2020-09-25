.class final Lo/setBackgroundTint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/net/URL;

.field private final onMessageChannelReady:Lo/setFabCradleMargin;

.field private final onNavigationEvent:[B

.field private final onPostMessage:Ljava/lang/String;

.field private final synthetic onTransact:Lo/setHideOnScroll;


# direct methods
.method public constructor <init>(Lo/setHideOnScroll;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lo/setFabCradleMargin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lo/setFabCradleMargin;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lo/setBackgroundTint;->extraCallback:Ljava/net/URL;

    .line 6
    iput-object p4, p0, Lo/setBackgroundTint;->onNavigationEvent:[B

    .line 7
    iput-object p6, p0, Lo/setBackgroundTint;->onMessageChannelReady:Lo/setFabCradleMargin;

    .line 8
    iput-object p2, p0, Lo/setBackgroundTint;->onPostMessage:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lo/setBackgroundTint;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 11
    iget-object v1, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-virtual {v1}, Lo/setChipTextResource;->extraCallback()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    :try_start_0
    iget-object v3, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    iget-object v4, p0, Lo/setBackgroundTint;->extraCallback:Ljava/net/URL;

    invoke-virtual {v3, v4}, Lo/setHideOnScroll;->onMessageChannelReady(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 17
    :try_start_1
    iget-object v4, p0, Lo/setBackgroundTint;->ICustomTabsCallback:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 18
    iget-object v4, p0, Lo/setBackgroundTint;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v4, p0, Lo/setBackgroundTint;->onNavigationEvent:[B

    if-eqz v4, :cond_1

    .line 22
    iget-object v4, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-virtual {v4}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v4

    iget-object v5, p0, Lo/setBackgroundTint;->onNavigationEvent:[B

    invoke-virtual {v4, v5}, Lo/setErrorTextColor;->ICustomTabsCallback([B)[B

    move-result-object v4

    .line 23
    iget-object v5, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-virtual {v5}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v5

    const-string v6, "Uploading data. size"

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 24
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 25
    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 27
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 28
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 29
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 30
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v10, v1

    move-object v2, v4

    move-object v1, v5

    goto/16 :goto_4

    :catch_0
    move-exception v4

    move-object v10, v1

    move-object v8, v4

    move-object v1, v5

    goto/16 :goto_8

    .line 32
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 33
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    :try_start_5
    iget-object v2, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-static {v2, v3}, Lo/setHideOnScroll;->ICustomTabsCallback(Lo/setHideOnScroll;Ljava/net/HttpURLConnection;)[B

    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 37
    :cond_2
    iget-object v0, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setBackgroundColor;

    iget-object v6, p0, Lo/setBackgroundTint;->onPostMessage:Ljava/lang/String;

    iget-object v7, p0, Lo/setBackgroundTint;->onMessageChannelReady:Lo/setFabCradleMargin;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lo/setBackgroundColor;-><init>(Ljava/lang/String;Lo/setFabCradleMargin;ILjava/lang/Throwable;[BLjava/util/Map;Lo/setCradleVerticalOffset;)V

    .line 38
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v4

    move-object v2, v4

    move v7, v8

    move-object v10, v11

    goto :goto_5

    :catch_1
    move-exception v4

    move v7, v8

    move-object v10, v11

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object v10, v1

    move-object v2, v4

    move v7, v8

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v10, v1

    move v7, v8

    :goto_2
    move-object v8, v4

    goto :goto_9

    :catchall_3
    move-exception v4

    move-object v10, v1

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v10, v1

    goto :goto_7

    :catchall_4
    move-exception v4

    move-object v3, v1

    move-object v10, v3

    :goto_3
    move-object v2, v4

    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-eqz v1, :cond_3

    .line 55
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 58
    iget-object v4, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-virtual {v4}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v4

    iget-object v5, p0, Lo/setBackgroundTint;->onPostMessage:Ljava/lang/String;

    .line 60
    invoke-static {v5}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 61
    invoke-virtual {v4, v0, v5, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    .line 63
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    :cond_4
    iget-object v0, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setBackgroundColor;

    iget-object v5, p0, Lo/setBackgroundTint;->onPostMessage:Ljava/lang/String;

    iget-object v6, p0, Lo/setBackgroundTint;->onMessageChannelReady:Lo/setFabCradleMargin;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lo/setBackgroundColor;-><init>(Ljava/lang/String;Lo/setFabCradleMargin;ILjava/lang/Throwable;[BLjava/util/Map;Lo/setCradleVerticalOffset;)V

    .line 65
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    .line 66
    throw v2

    :catch_5
    move-exception v4

    move-object v3, v1

    move-object v10, v3

    :goto_7
    move-object v8, v4

    :goto_8
    const/4 v7, 0x0

    :goto_9
    if-eqz v1, :cond_5

    .line 42
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_a

    :catch_6
    move-exception v1

    .line 45
    iget-object v2, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    iget-object v4, p0, Lo/setBackgroundTint;->onPostMessage:Ljava/lang/String;

    .line 47
    invoke-static {v4}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    invoke-virtual {v2, v0, v4, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_a
    if-eqz v3, :cond_6

    .line 50
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_6
    iget-object v0, p0, Lo/setBackgroundTint;->onTransact:Lo/setHideOnScroll;

    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setBackgroundColor;

    iget-object v5, p0, Lo/setBackgroundTint;->onPostMessage:Ljava/lang/String;

    iget-object v6, p0, Lo/setBackgroundTint;->onMessageChannelReady:Lo/setFabCradleMargin;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lo/setBackgroundColor;-><init>(Ljava/lang/String;Lo/setFabCradleMargin;ILjava/lang/Throwable;[BLjava/util/Map;Lo/setCradleVerticalOffset;)V

    .line 52
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method
