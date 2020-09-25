.class final Lo/getScionFrontendApiImplementation$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getScionFrontendApiImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getScionFrontendApiImplementation;

.field onNavigationEvent:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method private constructor <init>(Lo/getScionFrontendApiImplementation;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lo/getScionFrontendApiImplementation$onPostMessage;->ICustomTabsCallback:Lo/getScionFrontendApiImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getScionFrontendApiImplementation;B)V
    .locals 0

    .line 439
    invoke-direct {p0, p1}, Lo/getScionFrontendApiImplementation$onPostMessage;-><init>(Lo/getScionFrontendApiImplementation;)V

    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lo/getScionFrontendApiImplementation$onPostMessage;->ICustomTabsCallback:Lo/getScionFrontendApiImplementation;

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Lo/getComponents;

    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 449
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 453
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 455
    :cond_1
    move-object v0, p2

    check-cast v0, Lo/getComponents;

    iget-object v1, p0, Lo/getScionFrontendApiImplementation$onPostMessage;->ICustomTabsCallback:Lo/getScionFrontendApiImplementation;

    .line 1050
    iget-object v1, v1, Lo/getScionFrontendApiImplementation;->onNavigationEvent:Lo/getScionFrontendApiImplementation$ICustomTabsCallback;

    .line 1703
    iput-object v1, v0, Lo/getComponents;->extraCallback:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 458
    :cond_2
    iget-object v0, p0, Lo/getScionFrontendApiImplementation$onPostMessage;->onNavigationEvent:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_3

    .line 459
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 465
    iget-object v0, p0, Lo/getScionFrontendApiImplementation$onPostMessage;->ICustomTabsCallback:Lo/getScionFrontendApiImplementation;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lo/getComponents;

    if-eqz v0, :cond_0

    .line 466
    move-object v0, p2

    check-cast v0, Lo/getComponents;

    const/4 v1, 0x0

    .line 2703
    iput-object v1, v0, Lo/getComponents;->extraCallback:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 469
    :cond_0
    iget-object v0, p0, Lo/getScionFrontendApiImplementation$onPostMessage;->onNavigationEvent:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 470
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
