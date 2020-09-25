.class final Lo/onRelationshipValidationResult$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/prepareFromUri$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Landroid/view/View;

.field final synthetic onNavigationEvent:Lo/onRelationshipValidationResult;

.field final synthetic onPostMessage:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/onRelationshipValidationResult;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lo/onRelationshipValidationResult$5;->onNavigationEvent:Lo/onRelationshipValidationResult;

    iput-object p2, p0, Lo/onRelationshipValidationResult$5;->onPostMessage:Landroid/view/View;

    iput-object p3, p0, Lo/onRelationshipValidationResult$5;->extraCallback:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/prepareFromUri;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lo/onRelationshipValidationResult$5;->onPostMessage:Landroid/view/View;

    iget-object v1, p0, Lo/onRelationshipValidationResult$5;->extraCallback:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lo/onRelationshipValidationResult;->onNavigationEvent(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
