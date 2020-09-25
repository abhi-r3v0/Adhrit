.class final Lo/onRelationshipValidationResult$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

.field final synthetic onNavigationEvent:Landroid/view/View;

.field final synthetic onPostMessage:Lo/onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/onRelationshipValidationResult;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lo/onRelationshipValidationResult$1;->onPostMessage:Lo/onRelationshipValidationResult;

    iput-object p2, p0, Lo/onRelationshipValidationResult$1;->ICustomTabsCallback:Landroid/view/View;

    iput-object p3, p0, Lo/onRelationshipValidationResult$1;->onNavigationEvent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 615
    iget-object p2, p0, Lo/onRelationshipValidationResult$1;->ICustomTabsCallback:Landroid/view/View;

    iget-object p3, p0, Lo/onRelationshipValidationResult$1;->onNavigationEvent:Landroid/view/View;

    invoke-static {p1, p2, p3}, Lo/onRelationshipValidationResult;->onNavigationEvent(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
