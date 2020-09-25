.class final Lo/addDelegate$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addDelegate;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/addDelegate;


# direct methods
.method constructor <init>(Lo/addDelegate;)V
    .locals 0

    iput-object p1, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 30
    iget-object p1, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    .line 1118
    iget-object p1, p1, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    if-nez p1, :cond_0

    .line 30
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    instance-of p1, p1, Lo/addTintListToCache;

    if-eqz p1, :cond_9

    .line 31
    iget-object p1, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    .line 2118
    iget-object p1, p1, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    if-nez p1, :cond_1

    .line 31
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v0, "null cannot be cast to non-null type com.cred.pay.ui.instrumentlisting.adapter.InstrumentHeader"

    if-eqz p1, :cond_8

    check-cast p1, Lo/addTintListToCache;

    .line 3009
    iget-boolean p1, p1, Lo/addTintListToCache;->onMessageChannelReady:Z

    if-eqz p1, :cond_4

    .line 32
    iget-object p1, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    invoke-static {p1}, Lo/addDelegate;->onNavigationEvent(Lo/addDelegate;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    .line 3118
    iget-object v0, v0, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    if-nez v0, :cond_2

    .line 32
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    iget-object v1, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    check-cast v1, Lo/createOrientationHelpers;

    const-string/jumbo v2, "show_more"

    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    :cond_3
    return-void

    .line 33
    :cond_4
    iget-object p1, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    .line 4118
    iget-object p1, p1, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    if-nez p1, :cond_5

    .line 33
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    if-eqz p1, :cond_7

    check-cast p1, Lo/addTintListToCache;

    .line 5010
    iget-boolean p1, p1, Lo/addTintListToCache;->onPostMessage:Z

    if-eqz p1, :cond_9

    .line 34
    iget-object p1, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    invoke-static {p1}, Lo/addDelegate;->onNavigationEvent(Lo/addDelegate;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    .line 5118
    iget-object v0, v0, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    if-nez v0, :cond_6

    .line 34
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    iget-object v1, p0, Lo/addDelegate$5;->extraCallback:Lo/addDelegate;

    check-cast v1, Lo/createOrientationHelpers;

    const-string v2, "add_button"

    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    return-void

    .line 33
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void
.end method
