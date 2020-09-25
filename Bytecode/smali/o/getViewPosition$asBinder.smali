.class final Lo/getViewPosition$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewPosition;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/getFont;",
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
        "Lcom/dreamplug/androidapp/deeplink/DeepLinkData;",
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
.field private synthetic onMessageChannelReady:Lo/getViewPosition;


# direct methods
.method constructor <init>(Lo/getViewPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewPosition$asBinder;->onMessageChannelReady:Lo/getViewPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 56
    check-cast p1, Lo/getThumbTintList;

    .line 1092
    sget-object v0, Lo/clear;->ICustomTabsCallback$Stub:Lo/clear;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1092
    :goto_0
    check-cast v0, Lo/getThumbTintList;

    if-eqz v0, :cond_2

    .line 2011
    iget-boolean v1, v0, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    .line 2016
    :cond_1
    iget-object v0, v0, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1092
    :goto_1
    check-cast v0, Lo/TintInfo;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_7

    .line 1096
    iget-object v0, p0, Lo/getViewPosition$asBinder;->onMessageChannelReady:Lo/getViewPosition;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "PAY_WITH_CRED"

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_7

    .line 3011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    move-object p1, v2

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    .line 3015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 3016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1097
    :goto_3
    check-cast p1, Lo/getFont;

    if-eqz p1, :cond_7

    .line 3190
    iget-object v0, p1, Lo/getFont;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 1100
    iget-object v0, p0, Lo/getViewPosition$asBinder;->onMessageChannelReady:Lo/getViewPosition;

    invoke-static {v0, p1}, Lo/getViewPosition;->onNavigationEvent(Lo/getViewPosition;Lo/getFont;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1102
    iget-object v0, p0, Lo/getViewPosition$asBinder;->onMessageChannelReady:Lo/getViewPosition;

    .line 4000
    iget-object v0, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 1102
    iget-object v1, p0, Lo/getViewPosition$asBinder;->onMessageChannelReady:Lo/getViewPosition;

    invoke-static {v1}, Lo/getViewPosition;->extraCallback(Lo/getViewPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4019
    iget-object v2, v1, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    :cond_4
    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 1102
    invoke-static {v0, v2, v3, v3, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1103
    sget-object v0, Lo/getInt;->asInterface:Lo/getInt;

    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, p1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 1105
    :cond_5
    iget-object v0, p0, Lo/getViewPosition$asBinder;->onMessageChannelReady:Lo/getViewPosition;

    invoke-static {v0, p1}, Lo/getViewPosition;->onMessageChannelReady(Lo/getViewPosition;Lo/getFont;)V

    return-void

    .line 1108
    :cond_6
    iget-object v0, p0, Lo/getViewPosition$asBinder;->onMessageChannelReady:Lo/getViewPosition;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4190
    iget-object p1, p1, Lo/getFont;->getInterfaceDescriptor:Ljava/lang/String;

    .line 1108
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_7
    return-void
.end method
