.class final Lo/addViewHolderToRecycledViewPool$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addViewHolderToRecycledViewPool;->onMessageChannelReady(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "E",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

.field private synthetic onPostMessage:Lo/addViewHolderToRecycledViewPool;


# direct methods
.method constructor <init>(Lo/addViewHolderToRecycledViewPool;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 0

    iput-object p1, p0, Lo/addViewHolderToRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/addViewHolderToRecycledViewPool;

    iput-object p2, p0, Lo/addViewHolderToRecycledViewPool$onNavigationEvent;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lo/addViewHolderToRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/addViewHolderToRecycledViewPool;

    invoke-static {v0}, Lo/addViewHolderToRecycledViewPool;->onMessageChannelReady(Lo/addViewHolderToRecycledViewPool;)Lo/getScrapOrCachedViewForId;

    move-result-object v0

    iget-object v1, p0, Lo/addViewHolderToRecycledViewPool$onNavigationEvent;->onMessageChannelReady:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-interface {v0, v1}, Lo/getScrapOrCachedViewForId;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    return-void
.end method
