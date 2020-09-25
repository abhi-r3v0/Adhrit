.class final Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;
.super Lo/onBecameBackground$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppsFlyerLibCore$2$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private extraCallback:I

.field private synthetic onMessageChannelReady:Lo/AppsFlyerLibCore$2$ICustomTabsCallback;


# direct methods
.method private constructor <init>(Lo/AppsFlyerLibCore$2$ICustomTabsCallback;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/AppsFlyerLibCore$2$ICustomTabsCallback;

    invoke-direct {p0}, Lo/onBecameBackground$onPostMessage;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/AppsFlyerLibCore$2$ICustomTabsCallback;B)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/AppsFlyerLibCore$2$ICustomTabsCallback;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/AppsFlyerLibCore$2$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->onMessageChannelReady()[Lo/AppsFlyerLibCore$2$extraCallback;

    .line 152
    iget v0, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->extraCallback:I

    iget-object v1, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/AppsFlyerLibCore$2$ICustomTabsCallback;

    .line 1059
    iget-object v1, v1, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->onMessageChannelReady:[Lo/AppsFlyerLibCore$2$extraCallback;

    .line 152
    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Lo/onBecameBackground$onMessageChannelReady;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/AppsFlyerLibCore$2$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->onMessageChannelReady()[Lo/AppsFlyerLibCore$2$extraCallback;

    .line 158
    iget-object v0, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/AppsFlyerLibCore$2$ICustomTabsCallback;

    .line 2059
    iget-object v0, v0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->onMessageChannelReady:[Lo/AppsFlyerLibCore$2$extraCallback;

    .line 158
    iget v1, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->extraCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->extraCallback:I

    aget-object v0, v0, v1

    .line 159
    iget-object v1, p0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/AppsFlyerLibCore$2$ICustomTabsCallback;

    .line 3059
    iget-object v1, v1, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/zip/ZipFile;

    .line 159
    iget-object v2, v0, Lo/AppsFlyerLibCore$2$extraCallback;->onNavigationEvent:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 161
    :try_start_0
    new-instance v2, Lo/onBecameBackground$onMessageChannelReady;

    invoke-direct {v2, v0, v1}, Lo/onBecameBackground$onMessageChannelReady;-><init>(Lo/onBecameBackground$extraCallback;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 168
    :cond_0
    throw v0
.end method
