.class public final Lo/getHandleCodeInApp$onPostMessage;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getHandleCodeInApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field final extraCallback:Lo/getAndroidPackageName;

.field final onNavigationEvent:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 2

    .line 78
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    sget v0, Lo/toStringMap$asInterface;->month_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/getHandleCodeInApp$onPostMessage;->onNavigationEvent:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 80
    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Z)V

    .line 81
    sget v0, Lo/toStringMap$asInterface;->month_grid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getAndroidPackageName;

    iput-object p1, p0, Lo/getHandleCodeInApp$onPostMessage;->extraCallback:Lo/getAndroidPackageName;

    if-nez p2, :cond_0

    .line 83
    iget-object p1, p0, Lo/getHandleCodeInApp$onPostMessage;->onNavigationEvent:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
