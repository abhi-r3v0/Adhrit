.class final Lo/onRelationshipValidationResult$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/view/View;

.field final synthetic extraCallback:Lo/onRelationshipValidationResult;

.field final synthetic onNavigationEvent:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/onRelationshipValidationResult;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lo/onRelationshipValidationResult$2;->extraCallback:Lo/onRelationshipValidationResult;

    iput-object p2, p0, Lo/onRelationshipValidationResult$2;->onNavigationEvent:Landroid/view/View;

    iput-object p3, p0, Lo/onRelationshipValidationResult$2;->ICustomTabsCallback:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 622
    iget-object v0, p0, Lo/onRelationshipValidationResult$2;->extraCallback:Lo/onRelationshipValidationResult;

    iget-object v0, v0, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    iget-object v1, p0, Lo/onRelationshipValidationResult$2;->onNavigationEvent:Landroid/view/View;

    iget-object v2, p0, Lo/onRelationshipValidationResult$2;->ICustomTabsCallback:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lo/onRelationshipValidationResult;->onNavigationEvent(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
