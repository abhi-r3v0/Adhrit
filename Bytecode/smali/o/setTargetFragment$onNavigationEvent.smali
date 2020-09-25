.class final Lo/setTargetFragment$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTargetFragment;->onPostMessage(Ljava/lang/String;Lo/onDisconnectSetValue;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field final synthetic onNavigationEvent:Lo/onDisconnectSetValue;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/setTargetFragment$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/setTargetFragment$onNavigationEvent;->onNavigationEvent:Lo/onDisconnectSetValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 54
    sget-object v0, Lo/requireActivity;->onNavigationEvent:Lo/requireActivity;

    .line 2000
    sget-object v0, Lo/requireActivity;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/helper/assets/helper/persistance/AssetsDatabase;

    .line 1017
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/helper/assets/helper/persistance/AssetsDatabase;->ICustomTabsCallback$Stub()Lo/requireHost;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lo/setTargetFragment$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2023
    sget-object v2, Lo/requireFragmentManager;->onPostMessage:Lo/requireFragmentManager$onNavigationEvent;

    invoke-virtual {v0, v1}, Lo/requireHost;->onPostMessage(Ljava/lang/String;)Lo/getActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3020
    :cond_0
    iget-object v1, v0, Lo/getActivity;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz v1, :cond_1

    .line 4016
    iget-object v1, v0, Lo/getActivity;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2058
    new-instance v1, Lo/setInitialSavedState$extraCallback;

    .line 5014
    iget-object v2, v0, Lo/getActivity;->extraCallback:Ljava/lang/String;

    .line 5020
    iget-object v3, v0, Lo/getActivity;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 6018
    iget-object v4, v0, Lo/getActivity;->onNavigationEvent:Ljava/util/List;

    .line 7016
    iget-object v0, v0, Lo/getActivity;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 2058
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lo/setInitialSavedState$extraCallback;-><init>(Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;I)V

    move-object v0, v1

    check-cast v0, Lo/setInitialSavedState;

    goto :goto_0

    .line 2060
    :cond_1
    new-instance v1, Lo/setInitialSavedState$onMessageChannelReady;

    .line 8014
    iget-object v2, v0, Lo/getActivity;->extraCallback:Ljava/lang/String;

    .line 8018
    iget-object v0, v0, Lo/getActivity;->onNavigationEvent:Ljava/util/List;

    const/4 v3, 0x0

    .line 2060
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lo/setInitialSavedState$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    check-cast v0, Lo/setInitialSavedState;

    .line 57
    :goto_0
    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v2, Lo/setTargetFragment$onNavigationEvent$1;

    invoke-direct {v2, p0, v0}, Lo/setTargetFragment$onNavigationEvent$1;-><init>(Lo/setTargetFragment$onNavigationEvent;Lo/setInitialSavedState;)V

    check-cast v2, Lo/getServerTime;

    invoke-static {v1, v2}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    return-void
.end method
