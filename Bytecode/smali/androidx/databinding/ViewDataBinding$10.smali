.class final Landroidx/databinding/ViewDataBinding$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/ViewDataBinding;-><init>(Lo/rateWithExtras;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Landroidx/databinding/ViewDataBinding;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 288
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$10;->onNavigationEvent:Landroidx/databinding/ViewDataBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 291
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$10;->onNavigationEvent:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->ICustomTabsCallback(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
