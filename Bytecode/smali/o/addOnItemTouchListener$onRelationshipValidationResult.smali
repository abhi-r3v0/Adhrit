.class final Lo/addOnItemTouchListener$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnItemTouchListener;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/fromPathMerge<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0004 \u0006*\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Triple;",
        "",
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
.field private synthetic extraCallback:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$onRelationshipValidationResult;->extraCallback:Lo/addOnItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 50
    check-cast p1, Lo/fromPathMerge;

    .line 1138
    iget-object v0, p0, Lo/addOnItemTouchListener$onRelationshipValidationResult;->extraCallback:Lo/addOnItemTouchListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->mainContainer:I

    invoke-virtual {v0, v1}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "mainContainer"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 2017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lo/addOnItemTouchListener$onRelationshipValidationResult;->extraCallback:Lo/addOnItemTouchListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1140
    iget-object v0, p0, Lo/addOnItemTouchListener$onRelationshipValidationResult;->extraCallback:Lo/addOnItemTouchListener;

    .line 2069
    iget-object v1, p1, Lo/fromPathMerge;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1140
    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lo/addOnItemTouchListener;->ICustomTabsCallback(Lo/addOnItemTouchListener;Ljava/lang/String;)V

    .line 3068
    iget-object p1, p1, Lo/fromPathMerge;->onNavigationEvent:Ljava/lang/Object;

    .line 1142
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1143
    iget-object p1, p0, Lo/addOnItemTouchListener$onRelationshipValidationResult;->extraCallback:Lo/addOnItemTouchListener;

    invoke-static {p1}, Lo/addOnItemTouchListener;->onNavigationEvent(Lo/addOnItemTouchListener;)Lo/getMoveDuration;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    :cond_0
    return-void
.end method
