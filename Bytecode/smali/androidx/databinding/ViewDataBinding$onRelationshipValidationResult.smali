.class final Landroidx/databinding/ViewDataBinding$onRelationshipValidationResult;
.super Lo/validateCustomAction$onPostMessage;
.source ""

# interfaces
.implements Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/validateCustomAction$onPostMessage;",
        "Landroidx/databinding/ViewDataBinding$ICustomTabsCallback<",
        "Lo/validateCustomAction;",
        ">;"
    }
.end annotation


# instance fields
.field final onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$asBinder<",
            "Lo/validateCustomAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1538
    invoke-direct {p0}, Lo/validateCustomAction$onPostMessage;-><init>()V

    .line 1539
    new-instance v0, Landroidx/databinding/ViewDataBinding$asBinder;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$asBinder;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$ICustomTabsCallback;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$onRelationshipValidationResult;->onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
