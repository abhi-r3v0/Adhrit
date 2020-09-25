.class final Lo/setTextEndPaddingResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic ICustomTabsCallback$Stub:Lo/setTextEndPadding;

.field private final extraCallback:[B

.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/setCloseIconEndPaddingResource;

.field private final onPostMessage:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lo/setTextEndPadding;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lo/setCloseIconEndPaddingResource;)V
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
            "Lo/setCloseIconEndPaddingResource;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/setTextEndPaddingResource;->ICustomTabsCallback$Stub:Lo/setTextEndPadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lo/setTextEndPaddingResource;->onPostMessage:Ljava/net/URL;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lo/setTextEndPaddingResource;->extraCallback:[B

    .line 7
    iput-object p6, p0, Lo/setTextEndPaddingResource;->onNavigationEvent:Lo/setCloseIconEndPaddingResource;

    .line 8
    iput-object p2, p0, Lo/setTextEndPaddingResource;->ICustomTabsCallback:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lo/setTextEndPaddingResource;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method

.method private final onMessageChannelReady(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lo/setTextEndPaddingResource;->ICustomTabsCallback$Stub:Lo/setTextEndPadding;

    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v7, Lo/setCloseIconStartPadding;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/setCloseIconStartPadding;-><init>(Lo/setTextEndPaddingResource;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 34
    invoke-virtual {v0, v7}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final synthetic onNavigationEvent(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 6

    .line 36
    iget-object v0, p0, Lo/setTextEndPaddingResource;->onNavigationEvent:Lo/setCloseIconEndPaddingResource;

    iget-object v1, p0, Lo/setTextEndPaddingResource;->ICustomTabsCallback:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lo/setCloseIconEndPaddingResource;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method public final run()V
    .locals 5

    .line 11
    iget-object v0, p0, Lo/setTextEndPaddingResource;->ICustomTabsCallback$Stub:Lo/setTextEndPadding;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCallback()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v2, p0, Lo/setTextEndPaddingResource;->ICustomTabsCallback$Stub:Lo/setTextEndPadding;

    iget-object v3, p0, Lo/setTextEndPaddingResource;->onPostMessage:Ljava/net/URL;

    invoke-virtual {v2, v3}, Lo/setTextEndPadding;->onPostMessage(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 17
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iget-object v4, p0, Lo/setTextEndPaddingResource;->ICustomTabsCallback$Stub:Lo/setTextEndPadding;

    invoke-static {v4, v2}, Lo/setTextEndPadding;->onMessageChannelReady(Lo/setTextEndPadding;Ljava/net/HttpURLConnection;)[B

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 21
    :cond_0
    invoke-direct {p0, v1, v0, v4, v3}, Lo/setTextEndPaddingResource;->onMessageChannelReady(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v3, v0

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v0

    goto :goto_1

    :catchall_2
    move-exception v4

    move-object v2, v0

    move-object v3, v2

    :goto_0
    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31
    :cond_1
    invoke-direct {p0, v1, v0, v0, v3}, Lo/setTextEndPaddingResource;->onMessageChannelReady(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 32
    throw v4

    :catch_2
    move-exception v4

    move-object v2, v0

    move-object v3, v2

    :goto_1
    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 26
    :cond_2
    invoke-direct {p0, v1, v4, v0, v3}, Lo/setTextEndPaddingResource;->onMessageChannelReady(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
