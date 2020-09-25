.class final Lo/convertFocusDirectionToLayoutDirection$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/convertFocusDirectionToLayoutDirection;-><init>()V
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
        "Ljava/lang/String;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
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
.field private synthetic extraCallback:Lo/convertFocusDirectionToLayoutDirection;


# direct methods
.method constructor <init>(Lo/convertFocusDirectionToLayoutDirection;)V
    .locals 0

    iput-object p1, p0, Lo/convertFocusDirectionToLayoutDirection$onNavigationEvent;->extraCallback:Lo/convertFocusDirectionToLayoutDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 28
    check-cast p1, Lo/getThumbTintList;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1058
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 1059
    sget-object v0, Lo/recycleByLayoutState;->extraCallback:Lo/recycleByLayoutState$ICustomTabsCallback;

    .line 2056
    invoke-static {}, Lo/recycleByLayoutState;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1060
    iget-object p1, p0, Lo/convertFocusDirectionToLayoutDirection$onNavigationEvent;->extraCallback:Lo/convertFocusDirectionToLayoutDirection;

    invoke-static {p1}, Lo/convertFocusDirectionToLayoutDirection;->onMessageChannelReady(Lo/convertFocusDirectionToLayoutDirection;)Lo/getMoveDuration;

    move-result-object p1

    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2, v0}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    :cond_1
    return-void
.end method
