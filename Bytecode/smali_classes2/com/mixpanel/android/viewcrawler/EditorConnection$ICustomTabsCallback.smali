.class public final Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/EditorConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;B)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;-><init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    invoke-static {}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->onNavigationEvent()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback(Lo/toFeaturesJson$onMessageChannelReady;Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/NotSendableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;

    invoke-direct {v1, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 155
    new-instance v1, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;

    invoke-direct {v1, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 127
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;
        }
    .end annotation

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;
        }
    .end annotation

    .line 139
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 141
    :try_start_0
    iget-object p2, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {p2}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    move-result-object p2

    sget-object p3, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback(Lo/toFeaturesJson$onMessageChannelReady;Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/WebsocketNotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mixpanel/android/java_websocket/exceptions/NotSendableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;

    invoke-direct {p2, p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 143
    new-instance p2, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;

    invoke-direct {p2, p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
