.class final Lo/onNavigationEvent$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onNavigationEvent;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lo/onNavigationEvent$2;->onNavigationEvent:Lo/onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 77
    iget-object v0, p0, Lo/onNavigationEvent$2;->onNavigationEvent:Lo/onNavigationEvent;

    invoke-static {v0}, Lo/onNavigationEvent;->access$001(Lo/onNavigationEvent;)V

    return-void
.end method
