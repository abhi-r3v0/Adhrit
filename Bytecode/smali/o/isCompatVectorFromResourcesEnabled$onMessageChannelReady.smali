.class final Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isCompatVectorFromResourcesEnabled;->extraCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/dreamplug/network/helper/Response;",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;


# direct methods
.method constructor <init>(Lo/isCompatVectorFromResourcesEnabled;)V
    .locals 0

    iput-object p1, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 15
    check-cast p1, Lo/getViewForPosition;

    if-eqz p1, :cond_8

    .line 1033
    iget-object v0, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    const/4 v1, 0x0

    .line 2015
    iput-boolean v1, v0, Lo/isCompatVectorFromResourcesEnabled;->ICustomTabsCallback:Z

    .line 3010
    iget-object v0, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_5

    .line 4003
    iget-object v0, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 1035
    iget-object v0, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    .line 4015
    iget v1, v0, Lo/isCompatVectorFromResourcesEnabled;->extraCallback:I

    add-int/2addr v1, v2

    .line 5015
    iput v1, v0, Lo/isCompatVectorFromResourcesEnabled;->extraCallback:I

    .line 1036
    iget-object v0, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    .line 5022
    iget-object v0, v0, Lo/isCompatVectorFromResourcesEnabled;->onPostMessage:Ljava/util/List;

    .line 6003
    iget-object v1, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1036
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast v1, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->getResult()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1037
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7003
    iget-object v0, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 1037
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast v0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->getTotal_count()I

    move-result v0

    .line 8000
    sget-object v1, Lo/setTrackTintMode;->asBinder:Lo/getCollapseContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1038
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8003
    iget-object v0, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 1038
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    check-cast v0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->getTotalGemsEarned()I

    move-result v0

    .line 9000
    sget-object v1, Lo/setTrackTintMode;->onTransact:Lo/getCollapseContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1039
    iget-object v0, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    .line 9020
    iget-object v0, v0, Lo/isCompatVectorFromResourcesEnabled;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1039
    iget-object v1, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    .line 9022
    iget-object v1, v1, Lo/isCompatVectorFromResourcesEnabled;->onPostMessage:Ljava/util/List;

    .line 1039
    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1040
    iget-object v0, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    .line 10003
    iget-object p1, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez p1, :cond_4

    .line 1040
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    check-cast p1, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->getNextPage()Z

    move-result p1

    .line 10015
    iput-boolean p1, v0, Lo/isCompatVectorFromResourcesEnabled;->asInterface:Z

    return-void

    .line 1042
    :cond_5
    iget-object v0, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    .line 10021
    iget-object v0, v0, Lo/isCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    .line 1042
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1043
    iget-object v0, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    .line 11020
    iget-object v0, v0, Lo/isCompatVectorFromResourcesEnabled;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1043
    iget-object v1, p0, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/isCompatVectorFromResourcesEnabled;

    .line 11022
    iget-object v1, v1, Lo/isCompatVectorFromResourcesEnabled;->onPostMessage:Ljava/util/List;

    .line 1043
    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 12003
    iget-object v0, p1, Lo/getViewForPosition;->extraCallback:Ljava/lang/Throwable;

    .line 1044
    instance-of v0, v0, Lretrofit2/HttpException;

    if-eqz v0, :cond_7

    .line 13003
    iget-object v0, p1, Lo/getViewForPosition;->extraCallback:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 1044
    check-cast v0, Lretrofit2/HttpException;

    .line 13040
    iget v0, v0, Lretrofit2/HttpException;->ICustomTabsCallback:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_8

    goto :goto_0

    .line 1044
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type retrofit2.HttpException"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1047
    :cond_7
    :goto_0
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 14003
    iget-object v0, p1, Lo/getViewForPosition;->extraCallback:Ljava/lang/Throwable;

    .line 15003
    iget-object p1, p1, Lo/getViewForPosition;->onNavigationEvent:Ljava/lang/Object;

    .line 1047
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_8
    return-void
.end method
