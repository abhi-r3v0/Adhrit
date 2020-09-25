.class public final Lo/scrollVerticallyBy$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/scrollVerticallyBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/LoanManagementFragment$Companion;",
        "",
        "()V",
        "BACK",
        "",
        "CONTEXT",
        "CTA",
        "LOAN_DETAILS",
        "LOAN_ID",
        "PAYMENT_STATUS_DETAILS",
        "REPAYMENT_SCHEDULE",
        "SOURCE",
        "SOURCE_ID",
        "UPDATE_NAME",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/view/View;

.field public onMessageChannelReady:Z

.field public onNavigationEvent:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getProfile;)V
    .locals 1

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1036
    iput-boolean v0, p0, Lo/scrollVerticallyBy$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 1037
    iput v0, p0, Lo/scrollVerticallyBy$ICustomTabsCallback;->onNavigationEvent:I

    .line 1041
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lo/scrollVerticallyBy$ICustomTabsCallback;->ICustomTabsCallback:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "expanded"

    .line 1071
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lo/scrollVerticallyBy$ICustomTabsCallback;->onMessageChannelReady:Z

    const-string v1, "expandedComponentIdHint"

    .line 1072
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo/scrollVerticallyBy$ICustomTabsCallback;->onNavigationEvent:I

    .line 1074
    iget-boolean p1, p0, Lo/scrollVerticallyBy$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    .line 1091
    iget-object p1, p0, Lo/scrollVerticallyBy$ICustomTabsCallback;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1092
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    .line 1093
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Lo/scrollVerticallyBy$ICustomTabsCallback;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback(Landroid/view/View;)V

    :cond_0
    return-void
.end method
