.class public final Lo/isLayoutHierarchical$onTransact$5$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutHierarchical$onTransact$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/os/HandlerKt$postDelayed$runnable$1",
        "com/dreamplug/fabrik/ui/sms/BankSmsViewModel$sendSms$1$1$3$$special$$inlined$postDelayed$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact$5;


# direct methods
.method public constructor <init>(Lo/isLayoutHierarchical$onTransact$5;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutHierarchical$onTransact$5$2;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lo/isLayoutHierarchical$onTransact$5$2;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact$5;

    iget-object v0, v0, Lo/isLayoutHierarchical$onTransact$5;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;

    iget-object v0, v0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    iget-object v1, p0, Lo/isLayoutHierarchical$onTransact$5$2;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact$5;

    iget-object v1, v1, Lo/isLayoutHierarchical$onTransact$5;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;

    iget-object v1, v1, Lo/isLayoutHierarchical$onTransact;->onNavigationEvent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lo/isLayoutHierarchical;->onNavigationEvent(Ljava/lang/Integer;)V

    return-void
.end method
