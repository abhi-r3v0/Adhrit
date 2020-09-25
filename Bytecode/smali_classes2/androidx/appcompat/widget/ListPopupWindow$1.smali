.class final Landroidx/appcompat/widget/ListPopupWindow$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1140
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$1;->ICustomTabsCallback:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getPopup()Lo/sendCustomAction;
    .locals 1

    .line 2143
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow$1;->ICustomTabsCallback:Landroidx/appcompat/widget/ListPopupWindow;

    return-object v0
.end method
