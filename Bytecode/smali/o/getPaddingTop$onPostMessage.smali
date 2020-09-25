.class final Lo/getPaddingTop$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingTop;-><init>()V
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "loading",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getPaddingTop;


# direct methods
.method constructor <init>(Lo/getPaddingTop;)V
    .locals 0

    iput-object p1, p0, Lo/getPaddingTop$onPostMessage;->extraCallback:Lo/getPaddingTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "loading"

    .line 1067
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "loadingMore"

    if-eqz p1, :cond_1

    .line 1068
    iget-object p1, p0, Lo/getPaddingTop$onPostMessage;->extraCallback:Lo/getPaddingTop;

    invoke-static {p1}, Lo/getPaddingTop;->ICustomTabsCallback(Lo/getPaddingTop;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p1

    .line 3000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 3151
    iget-object p1, p1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1068
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 1069
    iget-object p1, p0, Lo/getPaddingTop$onPostMessage;->extraCallback:Lo/getPaddingTop;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loadingMore:I

    invoke-virtual {p1, v1}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object p1, p0, Lo/getPaddingTop$onPostMessage;->extraCallback:Lo/getPaddingTop;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loadingMore:I

    invoke-virtual {p1, v0}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void

    .line 1072
    :cond_0
    iget-object p1, p0, Lo/getPaddingTop$onPostMessage;->extraCallback:Lo/getPaddingTop;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    return-void

    .line 1076
    :cond_1
    iget-object p1, p0, Lo/getPaddingTop$onPostMessage;->extraCallback:Lo/getPaddingTop;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loadingMore:I

    invoke-virtual {p1, v1}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 1077
    iget-object p1, p0, Lo/getPaddingTop$onPostMessage;->extraCallback:Lo/getPaddingTop;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loadingMore:I

    invoke-virtual {p1, v1}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 4017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    iget-object p1, p0, Lo/getPaddingTop$onPostMessage;->extraCallback:Lo/getPaddingTop;

    invoke-static {p1}, Lo/getPaddingTop;->asInterface(Lo/getPaddingTop;)V

    return-void
.end method
