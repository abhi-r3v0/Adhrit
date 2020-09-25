.class final Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getRemoteContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isPlayServicesPossiblyUpdating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getRemoteContext<",
        "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field final onMessageChannelReady:Lo/DynamiteApi;

.field final onNavigationEvent:I


# virtual methods
.method public final ICustomTabsCallback(Lo/DataHolder$zaa;Lo/getStartServicePackage;)Lo/DataHolder$zaa;
    .locals 0

    .line 13
    check-cast p1, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    check-cast p2, Lo/isPlayServicesPossiblyUpdating;

    invoke-virtual {p1, p2}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback(Lo/isPlayServicesPossiblyUpdating;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->ICustomTabsCallback:Z

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 15
    check-cast p1, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;

    .line 16
    iget v0, p0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    iget p1, p1, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 8
    iget v0, p0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onNavigationEvent:I

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()Lo/DynamiteApi;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onMessageChannelReady:Lo/DynamiteApi;

    return-object v0
.end method

.method public final onPostMessage()Lo/DynamiteModule$LoadingException;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;->onMessageChannelReady:Lo/DynamiteApi;

    invoke-virtual {v0}, Lo/DynamiteApi;->ICustomTabsCallback()Lo/DynamiteModule$LoadingException;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/zzj;Lo/zzj;)Lo/zzj;
    .locals 0

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
