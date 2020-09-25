.class final Lo/getAuthTokenProvider$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/moveRedRight;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAuthTokenProvider;->extraCallback(Lo/getMinKey$ICustomTabsCallback;Z)Lo/moveRedRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/moveRedRight;

.field private synthetic onNavigationEvent:Lo/beginTransaction$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/moveRedRight;Lo/beginTransaction$onNavigationEvent;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lo/getAuthTokenProvider$4;->extraCallback:Lo/moveRedRight;

    iput-object p2, p0, Lo/getAuthTokenProvider$4;->onNavigationEvent:Lo/beginTransaction$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/buildAncestorWhereClause;
    .locals 1

    .line 720
    iget-object v0, p0, Lo/getAuthTokenProvider$4;->extraCallback:Lo/moveRedRight;

    invoke-interface {v0}, Lo/moveRedRight;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 715
    iget-object v0, p0, Lo/getAuthTokenProvider$4;->extraCallback:Lo/moveRedRight;

    invoke-interface {v0, p1, p2}, Lo/moveRedRight;->ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/colorFlip;"
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lo/getAuthTokenProvider$4;->extraCallback:Lo/moveRedRight;

    iget-object v1, p0, Lo/getAuthTokenProvider$4;->onNavigationEvent:Lo/beginTransaction$onNavigationEvent;

    .line 710
    invoke-virtual {p3, v1}, Lo/deleteTrackedQuery;->onPostMessage(Lo/beginTransaction$onNavigationEvent;)Lo/deleteTrackedQuery;

    move-result-object p3

    .line 709
    invoke-interface {v0, p1, p2, p3}, Lo/moveRedRight;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object p1

    return-object p1
.end method
