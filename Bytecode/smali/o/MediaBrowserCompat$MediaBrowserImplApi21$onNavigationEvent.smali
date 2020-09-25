.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/MediaBrowserCompat$MediaBrowserImplApi21$onRelationshipValidationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onRelationshipValidationResult<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21;


# direct methods
.method public constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final a_(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-ne p1, v0, :cond_1

    .line 325
    iget-object p1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 326
    :goto_0
    iput-boolean p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->ICustomTabsCallback:Z

    :cond_1
    return-void
.end method

.method public final hasNext()Z
    .locals 3

    .line 332
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 335
    :cond_1
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1340
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1341
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->ICustomTabsCallback:Z

    .line 1342
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    goto :goto_0

    .line 1344
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    return-object v0
.end method
