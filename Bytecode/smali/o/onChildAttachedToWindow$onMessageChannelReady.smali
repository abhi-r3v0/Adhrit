.class public final Lo/onChildAttachedToWindow$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onChildAttachedToWindow;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelViewModel$getSpinTheWheel$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onChildAttachedToWindow;


# direct methods
.method constructor <init>(Lo/onChildAttachedToWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lo/onChildAttachedToWindow$onMessageChannelReady;->onPostMessage:Lo/onChildAttachedToWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 55
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 55
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;

    if-eqz p1, :cond_5

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 57
    iget-object v0, p0, Lo/onChildAttachedToWindow$onMessageChannelReady;->onPostMessage:Lo/onChildAttachedToWindow;

    invoke-static {v0}, Lo/onChildAttachedToWindow;->extraCallback(Lo/onChildAttachedToWindow;)Lo/setActive;

    move-result-object v0

    .line 1021
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 57
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 2014
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse$Meta;

    if-eqz v0, :cond_3

    .line 2026
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse$Meta;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 58
    check-cast v0, Ljava/lang/Iterable;

    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WheelSlab;

    .line 2039
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WheelSlab;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v3, :cond_1

    .line 60
    new-instance v5, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;

    .line 2043
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WheelSlab;->onNavigationEvent:Ljava/lang/Integer;

    .line 3041
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WheelSlab;->onPostMessage:Ljava/lang/String;

    .line 3078
    iget-object v7, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v7, :cond_2

    .line 4039
    iget-object v7, v7, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    .line 61
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    move-object v7, v1

    .line 4080
    :goto_1
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onPostMessage:Ljava/lang/String;

    const-string v8, "dark"

    .line 61
    invoke-static {v3, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 60
    invoke-direct {v5, v6, v2, v7, v3}, Lo/getDecoratedBoundsWithMargins$onNavigationEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lo/onChildAttachedToWindow$onMessageChannelReady;->onPostMessage:Lo/onChildAttachedToWindow;

    invoke-static {v0}, Lo/onChildAttachedToWindow;->onNavigationEvent(Lo/onChildAttachedToWindow;)Lo/setActive;

    move-result-object v0

    new-instance v10, Lo/onChildAttachedToWindow$ICustomTabsCallback;

    .line 5019
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;->asBinder:Lo/getTargetScrollPosition;

    .line 6009
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    .line 6018
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse$TemplateProperties;

    if-eqz v2, :cond_4

    .line 6033
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse$TemplateProperties;->onPostMessage:Ljava/lang/String;

    :cond_4
    move-object v6, v1

    .line 7016
    iget-object v7, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;->ICustomTabsCallback:Ljava/lang/String;

    .line 8011
    iget-object v8, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;->onNavigationEvent:Ljava/lang/Boolean;

    .line 8013
    iget-object v9, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinTheWheelResponse;->onMessageChannelReady:Ljava/lang/String;

    move-object v2, v10

    .line 64
    invoke-direct/range {v2 .. v9}, Lo/onChildAttachedToWindow$ICustomTabsCallback;-><init>(Lo/getTargetScrollPosition;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_5
    return-void

    .line 70
    :cond_6
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_7

    .line 71
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 8014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 9014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 71
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 72
    iget-object p1, p0, Lo/onChildAttachedToWindow$onMessageChannelReady;->onPostMessage:Lo/onChildAttachedToWindow;

    invoke-static {p1}, Lo/onChildAttachedToWindow;->onNavigationEvent(Lo/onChildAttachedToWindow;)Lo/setActive;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
