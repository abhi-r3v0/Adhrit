.class final Lo/getVerticalMargins$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getVerticalMargins;->ICustomTabsCallback()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getVerticalMargins;


# direct methods
.method constructor <init>(Lo/getVerticalMargins;)V
    .locals 0

    iput-object p1, p0, Lo/getVerticalMargins$extraCallback;->onNavigationEvent:Lo/getVerticalMargins;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/getVerticalMargins$extraCallback;->onNavigationEvent:Lo/getVerticalMargins;

    invoke-static {v0}, Lo/getVerticalMargins;->ICustomTabsCallback(Lo/getVerticalMargins;)V

    return-void
.end method
