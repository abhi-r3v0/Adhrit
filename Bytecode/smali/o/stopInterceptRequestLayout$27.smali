.class final Lo/stopInterceptRequestLayout$27;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u000e"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "top",
        "<anonymous parameter 3>",
        "bottom",
        "<anonymous parameter 5>",
        "<anonymous parameter 6>",
        "<anonymous parameter 7>",
        "<anonymous parameter 8>",
        "onLayoutChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$27;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 230
    iget-object p1, p0, Lo/stopInterceptRequestLayout$27;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 1036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->IPostMessageService$Stub$Proxy:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    sub-int/2addr p5, p3

    .line 1702
    invoke-virtual {p1, p5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    .line 231
    iget-object p1, p0, Lo/stopInterceptRequestLayout$27;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 2036
    iput p5, p1, Lo/stopInterceptRequestLayout;->read:I

    .line 232
    iget-object p1, p0, Lo/stopInterceptRequestLayout$27;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 2039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 2078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object p2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 232
    :goto_0
    check-cast p1, Ljava/lang/String;

    const-string p2, "post_slider_form "

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lo/stopInterceptRequestLayout$27;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    invoke-static {p1}, Lo/stopInterceptRequestLayout;->ICustomTabsCallback(Lo/stopInterceptRequestLayout;)V

    :cond_1
    return-void
.end method
