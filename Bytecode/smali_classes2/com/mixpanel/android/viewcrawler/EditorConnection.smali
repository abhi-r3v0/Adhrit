.class public final Lcom/mixpanel/android/viewcrawler/EditorConnection;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/viewcrawler/EditorConnection$ICustomTabsCallback;,
        Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;,
        Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;,
        Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/nio/ByteBuffer;


# instance fields
.field public final ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

.field private final onNavigationEvent:Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

.field private final onPostMessage:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->onNavigationEvent:Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    .line 48
    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->onPostMessage:Ljava/net/URI;

    .line 50
    :try_start_0
    new-instance p2, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    invoke-direct {p2, p0, p1, p3}, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;-><init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;Ljava/net/URI;Ljava/net/Socket;)V

    iput-object p2, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    .line 2110
    iget-object p1, p2, Lo/buildFeaturesSessionDataFrom;->onPostMessage:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 2112
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p2, Lo/buildFeaturesSessionDataFrom;->onPostMessage:Ljava/lang/Thread;

    .line 2113
    iget-object p1, p2, Lo/buildFeaturesSessionDataFrom;->onPostMessage:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1122
    iget-object p1, p2, Lo/buildFeaturesSessionDataFrom;->extraCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1123
    iget-object p1, p2, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    invoke-virtual {p1}, Lo/getSettingsFile;->onNavigationEvent()Z

    return-void

    .line 2111
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WebSocketClient objects are not reuseable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;

    invoke-direct {p2, p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic ICustomTabsCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    return-object p0
.end method

.method static synthetic extraCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->onNavigationEvent:Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Ljava/net/URI;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->onPostMessage:Ljava/net/URI;

    return-object p0
.end method

.method static synthetic onNavigationEvent()Ljava/nio/ByteBuffer;
    .locals 1

    .line 25
    sget-object v0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback:Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    .line 2401
    iget-object v0, v0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 2691
    iget-object v0, v0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->ICustomTabsCallback:Lo/readCachedSettings$onNavigationEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    .line 3406
    iget-object v0, v0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 3681
    iget-object v0, v0, Lo/getSettingsFile;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->extraCallback:Lo/readCachedSettings$onNavigationEvent;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;

    .line 4396
    iget-object v0, v0, Lo/buildFeaturesSessionDataFrom;->onNavigationEvent:Lo/getSettingsFile;

    .line 4686
    iget-boolean v0, v0, Lo/getSettingsFile;->onNavigationEvent:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v3
.end method
