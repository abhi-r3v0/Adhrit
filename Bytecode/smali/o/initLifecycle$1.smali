.class final Lo/initLifecycle$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/initLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/initLifecycle;


# direct methods
.method constructor <init>(Lo/initLifecycle;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lo/initLifecycle$1;->extraCallback:Lo/initLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 141
    iget-object v0, p0, Lo/initLifecycle$1;->extraCallback:Lo/initLifecycle;

    invoke-static {v0}, Lo/initLifecycle;->onNavigationEvent(Lo/initLifecycle;)V

    return-void
.end method
