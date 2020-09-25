.class abstract Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;
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
    accessFlags = 0x408
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onRelationshipValidationResult<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 236
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;)",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final a_(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-ne p1, v0, :cond_0

    .line 248
    iput-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 249
    iput-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 252
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-ne v0, p1, :cond_1

    .line 253
    invoke-virtual {p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    move-result-object v0

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 256
    :cond_1
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-ne v0, p1, :cond_4

    .line 1263
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-eq v0, p1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 1266
    :cond_2
    invoke-virtual {p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    move-result-object v1

    .line 257
    :cond_3
    :goto_0
    iput-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    :cond_4
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 2

    .line 1271
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 2263
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2266
    :cond_0
    invoke-virtual {p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1272
    :goto_1
    iput-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    return-object v0
.end method

.method abstract onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;)",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end method
