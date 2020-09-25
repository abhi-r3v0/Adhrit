.class final Lo/isLayoutRTL$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;-><init>()V
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
        "Landroid/view/WindowInsets;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/WindowInsets;",
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
.field private synthetic onMessageChannelReady:Lo/isLayoutRTL;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutRTL$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 75
    check-cast p1, Landroid/view/WindowInsets;

    .line 1168
    iget-object v0, p0, Lo/isLayoutRTL$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v0}, Lo/isLayoutRTL;->mayLaunchUrl(Lo/isLayoutRTL;)V

    .line 1169
    iget-object v0, p0, Lo/isLayoutRTL$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isLayoutRTL;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->guideTopTnc:I

    invoke-virtual {v0, v1}, Lo/isLayoutRTL;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/applyOptions;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lo/applyOptions;->setGuidelineBegin(I)V

    .line 1170
    iget-object v0, p0, Lo/isLayoutRTL$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isLayoutRTL;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->guideTop:I

    invoke-virtual {v0, v2}, Lo/isLayoutRTL;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/applyOptions;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lo/applyOptions;->setGuidelineBegin(I)V

    return-void
.end method
