.class Lo/RatingCompat$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/newHeartRating$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RatingCompat;->ICustomTabsCallback(Landroid/content/Context;Lo/extraCallback$onPostMessage;Lo/containsKey$ICustomTabsCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/newHeartRating$onNavigationEvent<",
        "Lo/RatingCompat$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lo/RatingCompat$4;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Lo/RatingCompat$onPostMessage;

    invoke-virtual {p0, p1}, Lo/RatingCompat$4;->onNavigationEvent(Lo/RatingCompat$onPostMessage;)V

    return-void
.end method

.method public onNavigationEvent(Lo/RatingCompat$onPostMessage;)V
    .locals 4

    .line 307
    sget-object v0, Lo/RatingCompat;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    sget-object v1, Lo/RatingCompat;->onNavigationEvent:Lo/fromMediaItemList;

    iget-object v2, p0, Lo/RatingCompat$4;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 310
    monitor-exit v0

    return-void

    .line 312
    :cond_0
    sget-object v2, Lo/RatingCompat;->onNavigationEvent:Lo/fromMediaItemList;

    iget-object v3, p0, Lo/RatingCompat$4;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 315
    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/newHeartRating$onNavigationEvent;

    invoke-interface {v2, p1}, Lo/newHeartRating$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 313
    monitor-exit v0

    throw p1
.end method
