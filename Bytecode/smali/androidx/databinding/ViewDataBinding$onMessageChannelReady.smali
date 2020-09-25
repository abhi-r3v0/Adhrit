.class public final Landroidx/databinding/ViewDataBinding$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:[[Ljava/lang/String;

.field public final onNavigationEvent:[[I

.field public final onPostMessage:[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x24

    new-array v1, v0, [[Ljava/lang/String;

    .line 1637
    iput-object v1, p0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->ICustomTabsCallback:[[Ljava/lang/String;

    new-array v1, v0, [[I

    .line 1638
    iput-object v1, p0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->onNavigationEvent:[[I

    new-array v0, v0, [[I

    .line 1639
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->onPostMessage:[[I

    return-void
.end method
