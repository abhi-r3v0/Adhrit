.class final Lo/stopInterceptRequestLayout$26;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field private synthetic onPostMessage:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$26;->onPostMessage:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 36
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1250
    iget-object v0, p0, Lo/stopInterceptRequestLayout$26;->onPostMessage:Lo/stopInterceptRequestLayout;

    .line 3046
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v2, "fragment.requireView()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2526
    new-instance v2, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;

    invoke-direct {v2, v0, p1}, Lo/stopInterceptRequestLayout$onRelationshipValidationResult;-><init>(Lo/stopInterceptRequestLayout;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1251
    iget-object p1, p0, Lo/stopInterceptRequestLayout$26;->onPostMessage:Lo/stopInterceptRequestLayout;

    invoke-static {p1}, Lo/stopInterceptRequestLayout;->ICustomTabsCallback(Lo/stopInterceptRequestLayout;)V

    :cond_0
    return-void
.end method
