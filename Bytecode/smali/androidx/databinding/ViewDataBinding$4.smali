.class public final Landroidx/databinding/ViewDataBinding$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/databinding/ViewDataBinding$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public extraCallback:Landroid/graphics/Rect;

.field private onMessageChannelReady:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .line 3009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3010
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$4;->extraCallback:Landroid/graphics/Rect;

    .line 3011
    iput p2, p0, Landroidx/databinding/ViewDataBinding$4;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$asBinder;
    .locals 1

    .line 126
    new-instance v0, Landroidx/databinding/ViewDataBinding$onNavigationEvent;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/ViewDataBinding$onNavigationEvent;-><init>(Landroidx/databinding/ViewDataBinding;I)V

    .line 2597
    iget-object p1, v0, Landroidx/databinding/ViewDataBinding$onNavigationEvent;->ICustomTabsCallback:Landroidx/databinding/ViewDataBinding$asBinder;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3025
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3027
    :cond_1
    check-cast p1, Landroidx/databinding/ViewDataBinding$4;

    .line 3029
    iget v2, p0, Landroidx/databinding/ViewDataBinding$4;->onMessageChannelReady:I

    iget p1, p1, Landroidx/databinding/ViewDataBinding$4;->onMessageChannelReady:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 3035
    iget v0, p0, Landroidx/databinding/ViewDataBinding$4;->onMessageChannelReady:I

    return v0
.end method
