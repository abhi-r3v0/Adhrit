.class final Lo/reverseIteratorFrom$5;
.super Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/reverseIteratorFrom$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/reverseIteratorFrom$ICustomTabsCallback;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/reverseIteratorFrom$5;->ICustomTabsCallback:Lo/reverseIteratorFrom$ICustomTabsCallback;

    invoke-direct {p0}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/reverseIteratorFrom$asInterface;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lo/reverseIteratorFrom$5;->ICustomTabsCallback:Lo/reverseIteratorFrom$ICustomTabsCallback;

    .line 1733
    iget-object v1, p1, Lo/reverseIteratorFrom$asInterface;->ICustomTabsCallback:Ljava/util/List;

    .line 1744
    iget-object p1, p1, Lo/reverseIteratorFrom$asInterface;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    .line 90
    invoke-interface {v0, v1, p1}, Lo/reverseIteratorFrom$ICustomTabsCallback;->extraCallback(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/emptyMap;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/reverseIteratorFrom$5;->ICustomTabsCallback:Lo/reverseIteratorFrom$ICustomTabsCallback;

    invoke-interface {v0, p1}, Lo/reverseIteratorFrom$ICustomTabsCallback;->onMessageChannelReady(Lo/emptyMap;)V

    return-void
.end method
