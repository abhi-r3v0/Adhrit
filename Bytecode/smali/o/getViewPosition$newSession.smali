.class final Lo/getViewPosition$newSession;
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
.field private synthetic ICustomTabsCallback:Lo/getViewPosition;


# direct methods
.method constructor <init>(Lo/getViewPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewPosition$newSession;->ICustomTabsCallback:Lo/getViewPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 56
    check-cast p1, Lo/getThumbTintList;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2016
    :cond_0
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1114
    :goto_0
    check-cast v0, Lo/getFont;

    .line 1115
    iget-object v2, p0, Lo/getViewPosition$newSession;->ICustomTabsCallback:Lo/getViewPosition;

    invoke-static {v2, v0}, Lo/getViewPosition;->onNavigationEvent(Lo/getViewPosition;Lo/getFont;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 3015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 3016
    iget-object v1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1117
    :goto_1
    check-cast v1, Lo/getFont;

    if-eqz v1, :cond_2

    .line 1119
    iget-object p1, p0, Lo/getViewPosition$newSession;->ICustomTabsCallback:Lo/getViewPosition;

    invoke-static {p1, v1}, Lo/getViewPosition;->onMessageChannelReady(Lo/getViewPosition;Lo/getFont;)V

    :cond_2
    return-void
.end method
