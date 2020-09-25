.class final Lo/isItemChanged$IPostMessageService$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "",
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
.field private synthetic onNavigationEvent:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$IPostMessageService$Stub$Proxy;->onNavigationEvent:Lo/isItemChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 67
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1176
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1178
    iget-object p1, p0, Lo/isItemChanged$IPostMessageService$Stub$Proxy;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onPostMessage(Lo/isItemChanged;)Lo/createFullSpanItemFromStart;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eq p1, v1, :cond_4

    .line 1179
    :cond_1
    iget-object p1, p0, Lo/isItemChanged$IPostMessageService$Stub$Proxy;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onPostMessage(Lo/isItemChanged;)Lo/createFullSpanItemFromStart;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lo/isItemChanged$IPostMessageService$Stub$Proxy;->onNavigationEvent:Lo/isItemChanged;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string/jumbo v1, "track_progress_dailog"

    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1181
    :cond_3
    iget-object p1, p0, Lo/isItemChanged$IPostMessageService$Stub$Proxy;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onPostMessage(Lo/isItemChanged;)Lo/createFullSpanItemFromStart;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-ne p1, v1, :cond_4

    .line 1182
    iget-object p1, p0, Lo/isItemChanged$IPostMessageService$Stub$Proxy;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onPostMessage(Lo/isItemChanged;)Lo/createFullSpanItemFromStart;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    :cond_4
    return-void
.end method
