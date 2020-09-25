.class final Landroidx/databinding/ViewDataBinding$asBinder;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "asBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field protected final extraCallback:I

.field onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$ICustomTabsCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Landroidx/databinding/ViewDataBinding$ICustomTabsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1391
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->asInterface()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1392
    iput p2, p0, Landroidx/databinding/ViewDataBinding$asBinder;->extraCallback:I

    .line 1393
    iput-object p3, p0, Landroidx/databinding/ViewDataBinding$asBinder;->onNavigationEvent:Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;

    return-void
.end method
