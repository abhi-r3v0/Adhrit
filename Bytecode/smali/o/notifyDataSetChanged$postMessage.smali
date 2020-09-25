.class final Lo/notifyDataSetChanged$postMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/getThumbTintList<",
        "+",
        "Lo/setListener;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/ScreenData;",
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
.field private synthetic onNavigationEvent:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0

    iput-object p1, p0, Lo/notifyDataSetChanged$postMessage;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 78
    check-cast p1, Lo/getThumbTintList;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1246
    :goto_0
    check-cast p1, Lo/setListener;

    if-eqz p1, :cond_2

    .line 1248
    sget-object v0, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 2605
    iget-object v0, p1, Lo/setListener;->onPostMessage:Ljava/lang/String;

    .line 1248
    invoke-static {v0}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "deeplink"

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "money"

    .line 1254
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/notifyDataSetChanged$postMessage;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    .line 4037
    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;->onPostMessage:Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;

    check-cast v1, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 5018
    iget-object v0, v0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v2, Lo/getThumbTintList;

    invoke-direct {v2, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    const-string v1, "cards"

    .line 1252
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/notifyDataSetChanged$postMessage;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    new-instance v1, Lo/onDetach$ICustomTabsService;

    invoke-direct {v1, v2}, Lo/onDetach$ICustomTabsService;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Lo/onDetach$ICustomTabsService;)V

    goto :goto_1

    :sswitch_2
    const-string v1, "home"

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/notifyDataSetChanged$postMessage;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    .line 3033
    sget-object v1, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    check-cast v1, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 4018
    iget-object v0, v0, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v2, Lo/getThumbTintList;

    invoke-direct {v2, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_3
    const-string v1, "lifestyle"

    .line 1253
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/notifyDataSetChanged$postMessage;->onNavigationEvent:Lo/notifyDataSetChanged;

    invoke-static {v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 1257
    :cond_1
    :goto_1
    sget-object v0, Lo/recordPreLayoutInformation;->onTransact:Lo/recordPreLayoutInformation;

    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, p1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x112593cb -> :sswitch_3
        0x30f4df -> :sswitch_2
        0x5a0e763 -> :sswitch_1
        0x63420c0 -> :sswitch_0
    .end sparse-switch
.end method
