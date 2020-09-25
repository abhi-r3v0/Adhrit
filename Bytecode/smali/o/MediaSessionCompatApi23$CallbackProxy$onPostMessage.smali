.class abstract Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;
.super Lo/MediaSessionCompatApi23$CallbackProxy$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi23$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onPostMessage"
.end annotation


# instance fields
.field protected ICustomTabsService:[Lo/getRating$onMessageChannelReady;

.field getInterfaceDescriptor:I

.field newSession:Ljava/lang/String;

.field warmup:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1693
    invoke-direct {p0, v0}, Lo/MediaSessionCompatApi23$CallbackProxy$ICustomTabsCallback;-><init>(Lo/MediaSessionCompatApi23$CallbackProxy$4;)V

    .line 1687
    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->warmup:I

    return-void
.end method

.method public constructor <init>(Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 1719
    invoke-direct {p0, v0}, Lo/MediaSessionCompatApi23$CallbackProxy$ICustomTabsCallback;-><init>(Lo/MediaSessionCompatApi23$CallbackProxy$4;)V

    .line 1687
    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->warmup:I

    .line 1720
    iget-object v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->newSession:Ljava/lang/String;

    iput-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->newSession:Ljava/lang/String;

    .line 1721
    iget v0, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->getInterfaceDescriptor:I

    iput v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->getInterfaceDescriptor:I

    .line 1722
    iget-object p1, p1, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    invoke-static {p1}, Lo/getRating;->onPostMessage([Lo/getRating$onMessageChannelReady;)[Lo/getRating$onMessageChannelReady;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public getPathData()[Lo/getRating$onMessageChannelReady;
    .locals 1

    .line 1750
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1733
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->newSession:Ljava/lang/String;

    return-object v0
.end method

.method public onMessageChannelReady(Landroid/graphics/Path;)V
    .locals 1

    .line 1726
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1727
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 1728
    invoke-static {v0, p1}, Lo/getRating$onMessageChannelReady;->onMessageChannelReady([Lo/getRating$onMessageChannelReady;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public onPostMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPathData([Lo/getRating$onMessageChannelReady;)V
    .locals 6

    .line 1755
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/getRating;->onPostMessage([Lo/getRating$onMessageChannelReady;[Lo/getRating$onMessageChannelReady;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    invoke-static {p1}, Lo/getRating;->onPostMessage([Lo/getRating$onMessageChannelReady;)[Lo/getRating$onMessageChannelReady;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompatApi23$CallbackProxy$onPostMessage;->ICustomTabsService:[Lo/getRating$onMessageChannelReady;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2163
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2164
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    iput-char v4, v3, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    const/4 v3, 0x0

    .line 2165
    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 2166
    aget-object v4, v0, v2

    iget-object v4, v4, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    aget-object v5, p1, v2

    iget-object v5, v5, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
