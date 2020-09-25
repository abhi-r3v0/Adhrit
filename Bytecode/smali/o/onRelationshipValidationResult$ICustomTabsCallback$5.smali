.class final Lo/onRelationshipValidationResult$ICustomTabsCallback$5;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRelationshipValidationResult$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

.field final synthetic onNavigationEvent:Lo/onRelationshipValidationResult$extraCallback;


# direct methods
.method constructor <init>(Lo/onRelationshipValidationResult$ICustomTabsCallback;Landroid/content/Context;I[Ljava/lang/CharSequence;Lo/onRelationshipValidationResult$extraCallback;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$5;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p5, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$5;->onNavigationEvent:Lo/onRelationshipValidationResult$extraCallback;

    const p1, 0x1020014

    invoke-direct {p0, p2, p3, p1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 998
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 999
    iget-object p3, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$5;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object p3, p3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->mayLaunchUrl:[Z

    if-eqz p3, :cond_0

    .line 1000
    iget-object p3, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$5;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object p3, p3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->mayLaunchUrl:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 1002
    iget-object p3, p0, Lo/onRelationshipValidationResult$ICustomTabsCallback$5;->onNavigationEvent:Lo/onRelationshipValidationResult$extraCallback;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lo/onRelationshipValidationResult$extraCallback;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
