.class public final Landroidx/databinding/ViewDataBinding$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/databinding/ViewDataBinding$extraCallback;
.implements Lo/setActivityChooserModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private onNavigationEvent:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3011
    iput p1, p0, Landroidx/databinding/ViewDataBinding$1;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$asBinder;
    .locals 1

    .line 106
    new-instance v0, Landroidx/databinding/ViewDataBinding$onPostMessage;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/ViewDataBinding$onPostMessage;-><init>(Landroidx/databinding/ViewDataBinding;I)V

    .line 2486
    iget-object p1, v0, Landroidx/databinding/ViewDataBinding$onPostMessage;->onNavigationEvent:Landroidx/databinding/ViewDataBinding$asBinder;

    return-object p1
.end method

.method public final onPostMessage()I
    .locals 1

    .line 3017
    iget v0, p0, Landroidx/databinding/ViewDataBinding$1;->onNavigationEvent:I

    return v0
.end method
