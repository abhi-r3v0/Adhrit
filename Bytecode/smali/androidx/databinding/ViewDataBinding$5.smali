.class public Landroidx/databinding/ViewDataBinding$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/databinding/ViewDataBinding$extraCallback;
.implements Lo/onChooseActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/onChooseActivity;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onChooseActivity;)V
    .locals 0

    .line 3015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3016
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$5;->ICustomTabsCallback:Lo/onChooseActivity;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$asBinder;
    .locals 1

    .line 116
    new-instance v0, Landroidx/databinding/ViewDataBinding$onRelationshipValidationResult;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/ViewDataBinding$onRelationshipValidationResult;-><init>(Landroidx/databinding/ViewDataBinding;I)V

    .line 2548
    iget-object p1, v0, Landroidx/databinding/ViewDataBinding$onRelationshipValidationResult;->onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;

    return-object p1
.end method

.method public onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    .line 3021
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$5;->ICustomTabsCallback:Lo/onChooseActivity;

    invoke-interface {v0, p1, p2}, Lo/onChooseActivity;->onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V

    return-void
.end method
