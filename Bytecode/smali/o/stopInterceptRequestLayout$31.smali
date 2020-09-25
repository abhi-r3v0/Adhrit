.class final Lo/stopInterceptRequestLayout$31;
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
        "Lo/scrollTo;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "inputSheetUiModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/InputSheetUiDataModel;",
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
.field private synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$31;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 36
    check-cast p1, Lo/scrollTo;

    if-eqz p1, :cond_5

    .line 2040
    iget-object v0, p1, Lo/scrollTo;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v1, "slider"

    .line 1256
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1257
    iget-object v0, p0, Lo/stopInterceptRequestLayout$31;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService:Lo/isLayoutFrozen;

    .line 4036
    iget-object v3, p1, Lo/scrollTo;->ICustomTabsCallback:Ljava/lang/String;

    .line 4037
    iget-object v4, p1, Lo/scrollTo;->extraCallback:Ljava/lang/String;

    .line 4048
    iget-object v5, v0, Lo/isLayoutFrozen;->onPostMessage:Landroid/widget/TextView;

    const-string/jumbo v6, "sliderTitle"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4049
    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v5, "sliderDesc"

    if-eqz v3, :cond_2

    .line 4050
    iget-object v0, v0, Lo/isLayoutFrozen;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 4052
    :cond_2
    iget-object v3, v0, Lo/isLayoutFrozen;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4053
    iget-object v0, v0, Lo/isLayoutFrozen;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1259
    :cond_3
    iget-object v0, p0, Lo/stopInterceptRequestLayout$31;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 5036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 6036
    iget-object v3, p1, Lo/scrollTo;->ICustomTabsCallback:Ljava/lang/String;

    .line 1259
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    iget-object v0, p0, Lo/stopInterceptRequestLayout$31;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 7036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->asInterface:Landroid/widget/TextView;

    .line 7037
    iget-object v3, p1, Lo/scrollTo;->extraCallback:Ljava/lang/String;

    .line 1260
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    :goto_2
    iget-object v0, p0, Lo/stopInterceptRequestLayout$31;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 8036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->onNavigationEvent:Landroid/widget/LinearLayout;

    .line 8041
    iget-boolean p1, p1, Lo/scrollTo;->asBinder:Z

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 1262
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
