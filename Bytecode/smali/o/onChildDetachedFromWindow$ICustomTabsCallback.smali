.class public final Lo/onChildDetachedFromWindow$ICustomTabsCallback;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onChildDetachedFromWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/slotmachine/widget/WinnersListAdapter$WinnersListViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/dreamplug/androidapp/databinding/ItemSlotMachineWinnerBinding;",
        "(Lcom/dreamplug/androidapp/databinding/ItemSlotMachineWinnerBinding;)V",
        "bullet",
        "",
        "spacing",
        "setItem",
        "",
        "item",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/getThemeAttrColorStateList;

.field final extraCallback:Ljava/lang/String;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/getThemeAttrColorStateList;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object v0, p1, Lo/getThemeAttrColorStateList;->extraCallback:Landroid/widget/FrameLayout;

    .line 30
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/onChildDetachedFromWindow$ICustomTabsCallback;->ICustomTabsCallback:Lo/getThemeAttrColorStateList;

    const-string p1, "  "

    .line 32
    iput-object p1, p0, Lo/onChildDetachedFromWindow$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    const-string/jumbo p1, "\u2022"

    .line 33
    iput-object p1, p0, Lo/onChildDetachedFromWindow$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    return-void
.end method
