.class public abstract Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/reverseIteratorFrom$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;",
            "Lo/serverCacheEstimatedSizeInBytes;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1712
    new-instance v0, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;

    invoke-direct {v0}, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;-><init>()V

    .line 1809
    iput-object p1, v0, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 1820
    iput-object p2, v0, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 1841
    new-instance p1, Lo/reverseIteratorFrom$asInterface;

    iget-object p2, v0, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    iget-object v1, v0, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v0, v0, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onPostMessage:Lo/reverseIteratorFrom$onPostMessage;

    invoke-direct {p1, p2, v1, v0}, Lo/reverseIteratorFrom$asInterface;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;Lo/reverseIteratorFrom$onPostMessage;)V

    .line 320
    invoke-virtual {p0, p1}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;->extraCallback(Lo/reverseIteratorFrom$asInterface;)V

    return-void
.end method

.method public abstract extraCallback(Lo/reverseIteratorFrom$asInterface;)V
.end method

.method public abstract onMessageChannelReady(Lo/emptyMap;)V
.end method
