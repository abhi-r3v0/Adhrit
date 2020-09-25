.class final Lo/PopupMenu$OnMenuItemClickListener$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PopupMenu$OnMenuItemClickListener;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/cred/pay/repository/models/checkout/Widget;",
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
        "it",
        "Lcom/cred/pay/repository/models/checkout/Widget;",
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
.field final synthetic onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;


# direct methods
.method constructor <init>(Lo/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 29
    check-cast p1, Lcom/cred/pay/repository/models/checkout/Widget;

    if-eqz p1, :cond_1

    .line 1084
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->title:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2080
    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->asInterface:Ljava/lang/String;

    .line 1084
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3072
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/Widget;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/Cta;

    const-string v0, "actionLayout"

    if-eqz p1, :cond_0

    .line 1087
    iget-object v1, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->tvActionText:I

    invoke-virtual {v1, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "tvActionText"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3138
    iget-object v2, p1, Lcom/cred/pay/repository/models/checkout/Cta;->onPostMessage:Ljava/lang/String;

    .line 1087
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v1, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->actionLayout:I

    invoke-virtual {v1, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$onTransact$extraCallback;

    invoke-direct {v0, p1, p0}, Lo/PopupMenu$OnMenuItemClickListener$onTransact$extraCallback;-><init>(Lcom/cred/pay/repository/models/checkout/Cta;Lo/PopupMenu$OnMenuItemClickListener$onTransact;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 1092
    :cond_0
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$onTransact;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->actionLayout:I

    invoke-virtual {p1, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 4017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
