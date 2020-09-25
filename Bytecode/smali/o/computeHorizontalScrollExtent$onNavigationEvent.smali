.class public final Lo/computeHorizontalScrollExtent$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeHorizontalScrollExtent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic extraCallback(Lo/computeHorizontalScrollExtent;Ljava/lang/Integer;)Lo/clearScrap;
    .locals 3

    .line 117
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v0, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "all products"

    .line 117
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v0, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const/16 v1, 0xa

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lo/computeHorizontalScrollExtent;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lo/clearScrap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic onNavigationEvent(Lo/computeHorizontalScrollExtent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)Lo/clearScrap;
    .locals 3

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 29
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object p2, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x17

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "all products"

    .line 29
    invoke-static {p2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object p2, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_1
    :goto_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x5

    .line 31
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_3
    invoke-interface {p0, p1, p2, p3, p4}, Lo/computeHorizontalScrollExtent;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lo/clearScrap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic onNavigationEvent(Lo/computeHorizontalScrollExtent;Ljava/lang/String;Ljava/lang/String;ZI)Lo/clearScrap;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const-string p2, "pre_slider"

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    .line 49
    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lo/computeHorizontalScrollExtent;->extraCallback(Ljava/lang/String;Ljava/lang/String;Z)Lo/clearScrap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic onPostMessage(Lo/computeHorizontalScrollExtent;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;Ljava/lang/String;ZI)Lo/clearScrap;
    .locals 3

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 55
    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;

    invoke-direct {p2, v1, v2, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    const-string p3, "pre_slider"

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x1

    .line 57
    :cond_3
    invoke-interface {p0, p1, p2, p3, p4}, Lo/computeHorizontalScrollExtent;->onMessageChannelReady(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;Ljava/lang/String;Z)Lo/clearScrap;

    move-result-object p0

    return-object p0
.end method
