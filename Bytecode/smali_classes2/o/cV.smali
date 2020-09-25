.class final Lo/cV;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field private final synthetic onNavigationEvent:Lo/da;


# direct methods
.method constructor <init>(Lo/da;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/cV;->onNavigationEvent:Lo/da;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 2
    iget-object p1, p0, Lo/cV;->onNavigationEvent:Lo/da;

    invoke-virtual {p1}, Lo/da;->onNavigationEvent()V

    return-void
.end method
