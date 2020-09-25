.class final Lo/ӏ$onNavigationEvent$ICustomTabsCallback;
.super Lo/onBecameBackground$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ӏ$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/ӏ$onNavigationEvent;

.field private onPostMessage:I


# direct methods
.method private constructor <init>(Lo/ӏ$onNavigationEvent;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/ӏ$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/ӏ$onNavigationEvent;

    invoke-direct {p0}, Lo/onBecameBackground$onPostMessage;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ӏ$onNavigationEvent;B)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lo/ӏ$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/ӏ$onNavigationEvent;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 124
    iget v0, p0, Lo/ӏ$onNavigationEvent$ICustomTabsCallback;->onPostMessage:I

    iget-object v1, p0, Lo/ӏ$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/ӏ$onNavigationEvent;

    .line 1045
    iget-object v1, v1, Lo/ӏ$onNavigationEvent;->extraCallback:[Lo/ӏ$onPostMessage;

    .line 124
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

    .line 129
    iget-object v0, p0, Lo/ӏ$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/ӏ$onNavigationEvent;

    .line 2045
    iget-object v0, v0, Lo/ӏ$onNavigationEvent;->extraCallback:[Lo/ӏ$onPostMessage;

    .line 129
    iget v1, p0, Lo/ӏ$onNavigationEvent$ICustomTabsCallback;->onPostMessage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/ӏ$onNavigationEvent$ICustomTabsCallback;->onPostMessage:I

    aget-object v0, v0, v1

    .line 130
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lo/ӏ$onPostMessage;->onMessageChannelReady:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 132
    :try_start_0
    new-instance v2, Lo/onBecameBackground$onMessageChannelReady;

    invoke-direct {v2, v0, v1}, Lo/onBecameBackground$onMessageChannelReady;-><init>(Lo/onBecameBackground$extraCallback;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 137
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 139
    throw v0
.end method
