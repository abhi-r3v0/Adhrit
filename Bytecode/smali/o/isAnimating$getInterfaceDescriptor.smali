.class final Lo/isAnimating$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isAnimating;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/requestLayout$ICustomTabsCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinLandingViewModel$ResourceState;",
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
.field final synthetic ICustomTabsCallback:Lo/isAnimating;


# direct methods
.method constructor <init>(Lo/isAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 10

    .line 60
    check-cast p1, Lo/requestLayout$ICustomTabsCallback;

    .line 1190
    instance-of v0, p1, Lo/requestLayout$ICustomTabsCallback$onPostMessage;

    const-string v1, "pairs"

    const/4 v2, 0x2

    const-string v3, "is_success"

    const/4 v4, 0x0

    const-string/jumbo v5, "win_farm_card_load"

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v7, v0, [Lo/addWrite;

    .line 1192
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2043
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v3, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v7, v4

    .line 1193
    check-cast p1, Lo/requestLayout$ICustomTabsCallback$onPostMessage;

    .line 2145
    iget-object v3, p1, Lo/requestLayout$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/markItemDecorInsetsDirty;

    .line 3006
    iget-object v3, v3, Lo/markItemDecorInsetsDirty;->extraCallback:Ljava/util/List;

    .line 1193
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v8, "count_of_cards"

    invoke-direct {v4, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v7, v6

    .line 1194
    iget-object v3, p0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v3}, Lo/isAnimating;->ICustomTabsCallback(Lo/isAnimating;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "first_time"

    goto :goto_0

    :cond_0
    const-string v3, "auto"

    .line 4043
    :goto_0
    new-instance v4, Lo/addWrite;

    const-string v8, "action"

    invoke-direct {v4, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v7, v2

    .line 1191
    invoke-static {v7, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v7}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1191
    invoke-static {v5, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1196
    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v0}, Lo/isAnimating;->ICustomTabsCallback(Lo/isAnimating;)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {v0, v1}, Lo/isAnimating;->onNavigationEvent(Lo/isAnimating;I)V

    .line 1197
    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    .line 4145
    iget-object p1, p1, Lo/requestLayout$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/markItemDecorInsetsDirty;

    .line 1197
    invoke-static {v0, p1}, Lo/isAnimating;->onNavigationEvent(Lo/isAnimating;Lo/markItemDecorInsetsDirty;)V

    .line 1198
    iget-object p1, p0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {p1}, Lo/isAnimating;->ICustomTabsCallback(Lo/isAnimating;)I

    move-result p1

    if-ne p1, v6, :cond_2

    .line 1199
    iget-object p1, p0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {p1}, Lo/isAnimating;->onNavigationEvent(Lo/isAnimating;)Lo/calculateDtToFit;

    move-result-object p1

    .line 5023
    iget-object p1, p1, Lo/calculateDtToFit;->onPostMessage:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 1199
    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isAnimating$getInterfaceDescriptor$5;

    invoke-direct {v1, p0}, Lo/isAnimating$getInterfaceDescriptor$5;-><init>(Lo/isAnimating$getInterfaceDescriptor;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    .line 1215
    :cond_1
    instance-of v0, p1, Lo/requestLayout$ICustomTabsCallback$onNavigationEvent;

    if-eqz v0, :cond_2

    new-array v0, v2, [Lo/addWrite;

    .line 1217
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5043
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v3, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v0, v4

    .line 1218
    check-cast p1, Lo/requestLayout$ICustomTabsCallback$onNavigationEvent;

    .line 5146
    iget-object v3, p1, Lo/requestLayout$ICustomTabsCallback$onNavigationEvent;->extraCallback:Lo/addWrite;

    .line 6027
    iget-object v3, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 6043
    new-instance v4, Lo/addWrite;

    const-string v7, "error_details"

    invoke-direct {v4, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v6

    .line 1216
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1216
    invoke-static {v5, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1220
    iget-object v0, p0, Lo/isAnimating$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isAnimating;

    invoke-static {v0, p1}, Lo/isAnimating;->extraCallback(Lo/isAnimating;Lo/requestLayout$ICustomTabsCallback$onNavigationEvent;)V

    :cond_2
    return-void
.end method
