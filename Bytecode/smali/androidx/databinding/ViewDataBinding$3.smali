.class final Landroidx/databinding/ViewDataBinding$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/databinding/ViewDataBinding$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$asBinder;
    .locals 1

    .line 96
    new-instance v0, Landroidx/databinding/ViewDataBinding$onTransact;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/ViewDataBinding$onTransact;-><init>(Landroidx/databinding/ViewDataBinding;I)V

    .line 2441
    iget-object p1, v0, Landroidx/databinding/ViewDataBinding$onTransact;->onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;

    return-object p1
.end method
