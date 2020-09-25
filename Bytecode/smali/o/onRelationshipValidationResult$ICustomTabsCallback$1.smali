.class final Lo/onRelationshipValidationResult$ICustomTabsCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRelationshipValidationResult$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/onRelationshipValidationResult;

.field final synthetic onPostMessage:Lo/onRelationshipValidationResult$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/onRelationshipValidationResult$ICustomTabsCallback;Lo/onRelationshipValidationResult;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$1;->onPostMessage:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p2, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$1;->ICustomTabsCallback:Lo/onRelationshipValidationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1068
    iget-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$1;->onPostMessage:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object p1, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->requestPostMessageChannel:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$1;->ICustomTabsCallback:Lo/onRelationshipValidationResult;

    iget-object p2, p2, Lo/onRelationshipValidationResult;->ICustomTabsCallback:Lo/warmup;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1069
    iget-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$1;->onPostMessage:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-boolean p1, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->updateVisuals:Z

    if-nez p1, :cond_0

    .line 1070
    iget-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$1;->ICustomTabsCallback:Lo/onRelationshipValidationResult;

    iget-object p1, p1, Lo/onRelationshipValidationResult;->ICustomTabsCallback:Lo/warmup;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
