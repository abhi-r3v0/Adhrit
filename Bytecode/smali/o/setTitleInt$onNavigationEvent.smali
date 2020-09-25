.class final Lo/setTitleInt$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleInt;->onMessageChannelReady(Z)V
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
.field private synthetic onMessageChannelReady:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/setTitleInt$onNavigationEvent;->onMessageChannelReady:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 33
    sget-object v0, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/setTitleInt;->extraCallback(Ljava/lang/Runnable;)V

    .line 34
    sget-object v0, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    iget-boolean v1, p0, Lo/setTitleInt$onNavigationEvent;->onMessageChannelReady:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/setTitleInt;->onNavigationEvent(Lo/setTitleInt;Ljava/lang/Boolean;)V

    return-void
.end method
