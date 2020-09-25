.class final Lo/onRelationshipValidationResult$ICustomTabsCallback$2;
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
.field final synthetic ICustomTabsCallback:Lo/onRelationshipValidationResult$extraCallback;

.field final synthetic extraCallback:Lo/onRelationshipValidationResult;

.field final synthetic onNavigationEvent:Lo/onRelationshipValidationResult$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/onRelationshipValidationResult$ICustomTabsCallback;Lo/onRelationshipValidationResult$extraCallback;Lo/onRelationshipValidationResult;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->onNavigationEvent:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p2, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/onRelationshipValidationResult$extraCallback;

    iput-object p3, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->extraCallback:Lo/onRelationshipValidationResult;

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

    .line 1078
    iget-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->onNavigationEvent:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object p1, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->mayLaunchUrl:[Z

    if-eqz p1, :cond_0

    .line 1079
    iget-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->onNavigationEvent:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object p1, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->mayLaunchUrl:[Z

    iget-object p2, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/onRelationshipValidationResult$extraCallback;

    invoke-virtual {p2, p3}, Lo/onRelationshipValidationResult$extraCallback;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1081
    :cond_0
    iget-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->onNavigationEvent:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object p1, p1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService$Stub:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->extraCallback:Lo/onRelationshipValidationResult;

    iget-object p2, p2, Lo/onRelationshipValidationResult;->ICustomTabsCallback:Lo/warmup;

    iget-object p4, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/onRelationshipValidationResult$extraCallback;

    .line 1082
    invoke-virtual {p4, p3}, Lo/onRelationshipValidationResult$extraCallback;->isItemChecked(I)Z

    move-result p4

    .line 1081
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
