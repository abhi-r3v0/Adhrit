.class public final Lo/getCachedSpanGroupIndex$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCachedSpanGroupIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/adapter/LoanManagementAdapter$Companion;",
        "",
        "()V",
        "ACTION_DATA",
        "",
        "HEADER_BACK",
        "LOAN_SUMMARY",
        "REPAYMENT_DETAIL",
        "SECTION_HEADER",
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
.field private final ICustomTabsCallback:Lo/setExecutor;

.field private final onNavigationEvent:Lo/getSignInProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setExecutor;Lo/getSignInProvider;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getCachedSpanGroupIndex$onPostMessage;->ICustomTabsCallback:Lo/setExecutor;

    iput-object p2, p0, Lo/getCachedSpanGroupIndex$onPostMessage;->onNavigationEvent:Lo/getSignInProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/getCachedSpanGroupIndex$onPostMessage;->ICustomTabsCallback:Lo/setExecutor;

    iget-object v1, p0, Lo/getCachedSpanGroupIndex$onPostMessage;->onNavigationEvent:Lo/getSignInProvider;

    invoke-virtual {v0, v1}, Lo/CrashlyticsNativeComponent;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
