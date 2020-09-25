.class public Landroidx/appcompat/widget/PopupMenu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/PopupMenu$OnDismissListener;,
        Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private final mMenu:Lo/AudioAttributesImplBaseParcelizer;

.field mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field mOnDismissListener:Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

.field final mPopup:Lo/getRoot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6

    .line 83
    sget v4, Lo/extraCallback$ICustomTabsCallback;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 9

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Landroidx/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 108
    new-instance v0, Lo/AudioAttributesImplBaseParcelizer;

    invoke-direct {v0, p1}, Lo/AudioAttributesImplBaseParcelizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Lo/AudioAttributesImplBaseParcelizer;

    .line 109
    new-instance v1, Landroidx/appcompat/widget/PopupMenu$2;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/PopupMenu$2;-><init>(Landroidx/appcompat/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer$extraCallback;)V

    .line 123
    new-instance v0, Lo/getRoot;

    iget-object v4, p0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lo/getRoot;-><init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Landroid/view/View;ZII)V

    iput-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    .line 1132
    iput p3, v0, Lo/getRoot;->onPostMessage:I

    .line 125
    iget-object p1, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    new-instance p2, Landroidx/appcompat/widget/PopupMenu$4;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/PopupMenu$4;-><init>(Landroidx/appcompat/widget/PopupMenu;)V

    .line 2094
    iput-object p2, p1, Lo/getRoot;->asInterface:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    invoke-virtual {v0}, Lo/getRoot;->onPostMessage()V

    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 2

    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroidx/appcompat/widget/PopupMenu$3;

    iget-object v1, p0, Landroidx/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/PopupMenu$3;-><init>(Landroidx/appcompat/widget/PopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 196
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    .line 2139
    iget v0, v0, Lo/getRoot;->onPostMessage:I

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Lo/AudioAttributesImplBaseParcelizer;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 219
    new-instance v0, Lo/setDefaultImpl;

    iget-object v1, p0, Landroidx/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/setDefaultImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getMenuListView()Landroid/widget/ListView;
    .locals 2

    .line 306
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    .line 2320
    iget-object v1, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v0}, Lo/getServiceComponent;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    .line 2345
    invoke-virtual {v0}, Lo/getRoot;->onNavigationEvent()Lo/getServiceComponent;

    move-result-object v0

    invoke-virtual {v0}, Lo/getServiceComponent;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public inflate(I)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    .line 2132
    iput p1, v0, Lo/getRoot;->onPostMessage:I

    return-void
.end method

.method public setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V
    .locals 0

    .line 266
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu;->mOnDismissListener:Landroidx/appcompat/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Lo/getRoot;

    invoke-virtual {v0}, Lo/getRoot;->extraCallback()V

    return-void
.end method
