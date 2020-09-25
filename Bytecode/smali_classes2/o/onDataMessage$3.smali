.class final Lo/onDataMessage$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->onNavigationEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onDataMessage;

.field private synthetic onNavigationEvent:Z


# direct methods
.method constructor <init>(Lo/onDataMessage;Z)V
    .locals 0

    .line 353
    iput-object p1, p0, Lo/onDataMessage$3;->extraCallback:Lo/onDataMessage;

    iput-boolean p2, p0, Lo/onDataMessage$3;->onNavigationEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 356
    iget-object v0, p0, Lo/onDataMessage$3;->extraCallback:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    iget-boolean v1, p0, Lo/onDataMessage$3;->onNavigationEvent:Z

    invoke-interface {v0, v1}, Lo/colorFlip;->onNavigationEvent(Z)V

    return-void
.end method
