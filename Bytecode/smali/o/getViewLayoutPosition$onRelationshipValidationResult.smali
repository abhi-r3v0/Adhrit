.class final Lo/getViewLayoutPosition$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewLayoutPosition;->onCreate(Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/getViewLayoutPosition;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewLayoutPosition$onRelationshipValidationResult;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 63
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

    .line 1080
    :goto_0
    check-cast v0, Lo/setListener;

    if-eqz v0, :cond_4

    .line 1082
    sget-object v2, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 2605
    iget-object v2, v0, Lo/setListener;->onPostMessage:Ljava/lang/String;

    .line 1082
    invoke-static {v2}, Lo/setTrackResource;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1083
    iget-object v3, p0, Lo/getViewLayoutPosition$onRelationshipValidationResult;->onPostMessage:Lo/getViewLayoutPosition;

    invoke-static {v3}, Lo/getViewLayoutPosition;->extraCallback(Lo/getViewLayoutPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3019
    iget-object v1, v3, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    :cond_1
    const/4 v3, 0x1

    if-nez v1, :cond_3

    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 3056
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

    .line 4005
    iput-boolean v3, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 1085
    iget-object p1, p0, Lo/getViewLayoutPosition$onRelationshipValidationResult;->onPostMessage:Lo/getViewLayoutPosition;

    .line 4605
    iget-object v0, v0, Lo/setListener;->onPostMessage:Ljava/lang/String;

    .line 1085
    invoke-static {p1, v0}, Lo/getViewLayoutPosition;->ICustomTabsCallback(Lo/getViewLayoutPosition;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
