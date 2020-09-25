.class public abstract Lo/getPreserveFocusAfterLayout;
.super Lo/processDataSetCompletelyChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPreserveFocusAfterLayout$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \'2\u00020\u0001:\u0001\'B+\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J&\u0010\u001e\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001f\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0015\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0005H \u00a2\u0006\u0002\u0008!J\u001c\u0010\"\u001a\u0004\u0018\u00010\u00172\u0006\u0010#\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u000c\u0010$\u001a\u00020%*\u00020&H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000b\"\u0004\u0008\u0012\u0010\rR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\r\u00a8\u0006("
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/adapters/AbstractDigitTextAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/adapters/AbstractDigitAdapter;",
        "context",
        "Landroid/content/Context;",
        "digitWidth",
        "",
        "itemRes",
        "itemTextRes",
        "(Landroid/content/Context;III)V",
        "emptyItemResourceId",
        "getEmptyItemResourceId",
        "()I",
        "setEmptyItemResourceId",
        "(I)V",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "textColor",
        "getTextColor",
        "setTextColor",
        "textSize",
        "getTextSize",
        "setTextSize",
        "getEmptyItem",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "getImageView",
        "view",
        "textResource",
        "getItem",
        "index",
        "getItemDigitImage",
        "getItemDigitImage$app_release",
        "getView",
        "resource",
        "configureImageView",
        "",
        "Landroid/widget/ImageView;",
        "Companion",
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
.field private final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:I

.field private extraCallback:I

.field private onMessageChannelReady:Landroid/view/LayoutInflater;

.field private final onNavigationEvent:I

.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0, v1}, Lo/getPreserveFocusAfterLayout;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lo/processDataSetCompletelyChanged;-><init>()V

    iput-object p1, p0, Lo/getPreserveFocusAfterLayout;->onPostMessage:Landroid/content/Context;

    iput p2, p0, Lo/getPreserveFocusAfterLayout;->ICustomTabsCallback:I

    const/4 p2, -0x1

    iput p2, p0, Lo/getPreserveFocusAfterLayout;->onNavigationEvent:I

    const/4 p3, 0x0

    iput p3, p0, Lo/getPreserveFocusAfterLayout;->ICustomTabsCallback$Stub:I

    .line 22
    iput p2, p0, Lo/getPreserveFocusAfterLayout;->extraCallback:I

    const-string p2, "layout_inflater"

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lo/getPreserveFocusAfterLayout;->onMessageChannelReady:Landroid/view/LayoutInflater;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onMessageChannelReady(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lo/getPreserveFocusAfterLayout;->onMessageChannelReady:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_1
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lo/getPreserveFocusAfterLayout;->onPostMessage:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private static onNavigationEvent(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 72
    :try_start_0
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Landroid/widget/ImageView;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "AbstractWheelAdapter"

    const-string v0, "You must supply a resource ID for a ImageView"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    check-cast p0, Ljava/lang/Throwable;

    const-string v0, "AbstractWheelAdapter requires the resource ID to be a ImageView"

    .line 82
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_1
    move-object p0, v0

    .line 87
    :goto_2
    check-cast p0, Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public abstract extraCallback(I)I
.end method

.method public final onMessageChannelReady(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    .line 47
    iget v0, p0, Lo/getPreserveFocusAfterLayout;->extraCallback:I

    invoke-direct {p0, v0, p2}, Lo/getPreserveFocusAfterLayout;->onMessageChannelReady(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 48
    :goto_0
    iget v0, p0, Lo/getPreserveFocusAfterLayout;->extraCallback:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 49
    check-cast p2, Landroid/widget/ImageView;

    .line 2091
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lo/getPreserveFocusAfterLayout;->ICustomTabsCallback:I

    add-int/lit8 v2, v1, 0x12

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p1
.end method

.method public final onPostMessage(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 31
    invoke-virtual {p0}, Lo/getPreserveFocusAfterLayout;->onMessageChannelReady()I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_4

    if-nez p2, :cond_1

    .line 32
    iget p2, p0, Lo/getPreserveFocusAfterLayout;->onNavigationEvent:I

    invoke-direct {p0, p2, p3}, Lo/getPreserveFocusAfterLayout;->onMessageChannelReady(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 33
    :cond_1
    iget p3, p0, Lo/getPreserveFocusAfterLayout;->ICustomTabsCallback$Stub:I

    invoke-static {p2, p3}, Lo/getPreserveFocusAfterLayout;->onNavigationEvent(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    .line 35
    invoke-virtual {p0, p1}, Lo/getPreserveFocusAfterLayout;->extraCallback(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    :cond_2
    iget p1, p0, Lo/getPreserveFocusAfterLayout;->onNavigationEvent:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    .line 1091
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lo/getPreserveFocusAfterLayout;->ICustomTabsCallback:I

    add-int/lit8 v1, v0, 0x12

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object p2

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
