.class public abstract Lo/reverseIteratorFrom$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Lo/reverseIteratorFrom$onRelationshipValidationResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Lo/addToArray;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Lo/unionWith;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "params-default-port"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 145
    sput-object v0, Lo/reverseIteratorFrom$extraCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 8149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "params-proxy-detector"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 157
    sput-object v0, Lo/reverseIteratorFrom$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 9149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "params-sync-context"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 161
    sput-object v0, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 10149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "params-parser"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 165
    sput-object v0, Lo/reverseIteratorFrom$extraCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent()Ljava/lang/String;
.end method

.method public onNavigationEvent(Ljava/net/URI;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;
    .locals 4

    .line 235
    new-instance v0, Lo/reverseIteratorFrom$extraCallback$4;

    invoke-direct {v0, p2}, Lo/reverseIteratorFrom$extraCallback$4;-><init>(Lo/reverseIteratorFrom$onMessageChannelReady;)V

    .line 1209
    invoke-static {}, Lo/serverCacheEstimatedSizeInBytes;->onMessageChannelReady()Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object p2

    sget-object v1, Lo/reverseIteratorFrom$extraCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 1210
    invoke-virtual {v0}, Lo/reverseIteratorFrom$onNavigationEvent;->onNavigationEvent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object p2

    sget-object v1, Lo/reverseIteratorFrom$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 1211
    invoke-virtual {v0}, Lo/reverseIteratorFrom$onNavigationEvent;->onPostMessage()Lo/addToArray;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object p2

    sget-object v1, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 1212
    invoke-virtual {v0}, Lo/reverseIteratorFrom$onNavigationEvent;->extraCallback()Lo/unionWith;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object p2

    sget-object v1, Lo/reverseIteratorFrom$extraCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    new-instance v2, Lo/reverseIteratorFrom$extraCallback$5;

    invoke-direct {v2, v0}, Lo/reverseIteratorFrom$extraCallback$5;-><init>(Lo/reverseIteratorFrom$onNavigationEvent;)V

    .line 1213
    invoke-virtual {p2, v1, v2}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object p2

    .line 1219
    invoke-virtual {p2}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object p2

    .line 2557
    new-instance v0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {v0}, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;-><init>()V

    .line 2184
    sget-object v1, Lo/reverseIteratorFrom$extraCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 3065
    iget-object v2, p2, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2185
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 3583
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 2185
    sget-object v1, Lo/reverseIteratorFrom$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 4065
    iget-object v2, p2, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2186
    check-cast v1, Lo/addToArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4593
    check-cast v1, Lo/addToArray;

    iput-object v1, v0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/addToArray;

    .line 2186
    sget-object v1, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 5065
    iget-object v3, p2, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2187
    check-cast v1, Lo/unionWith;

    if-eqz v1, :cond_1

    .line 5603
    check-cast v1, Lo/unionWith;

    iput-object v1, v0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lo/unionWith;

    .line 2187
    sget-object v1, Lo/reverseIteratorFrom$extraCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 6065
    iget-object p2, p2, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2188
    check-cast p2, Lo/reverseIteratorFrom$onRelationshipValidationResult;

    if-eqz p2, :cond_0

    .line 6623
    check-cast p2, Lo/reverseIteratorFrom$onRelationshipValidationResult;

    iput-object p2, v0, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    .line 2189
    invoke-virtual {v0}, Lo/reverseIteratorFrom$onMessageChannelReady$onMessageChannelReady;->onPostMessage()Lo/reverseIteratorFrom$onMessageChannelReady;

    move-result-object p2

    .line 2190
    invoke-virtual {p0, p1, p2}, Lo/reverseIteratorFrom$extraCallback;->onNavigationEvent(Ljava/net/URI;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;

    move-result-object p1

    return-object p1

    .line 6890
    :cond_0
    throw v2

    .line 5890
    :cond_1
    throw v2

    .line 4890
    :cond_2
    throw v2
.end method
