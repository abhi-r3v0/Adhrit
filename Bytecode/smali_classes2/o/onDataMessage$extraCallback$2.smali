.class final Lo/onDataMessage$extraCallback$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage$extraCallback;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onDataMessage$extraCallback;


# direct methods
.method constructor <init>(Lo/onDataMessage$extraCallback;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lo/onDataMessage$extraCallback$2;->extraCallback:Lo/onDataMessage$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 442
    iget-object v0, p0, Lo/onDataMessage$extraCallback$2;->extraCallback:Lo/onDataMessage$extraCallback;

    invoke-static {v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Lo/onDataMessage$extraCallback;)Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0}, Lo/rotateRight;->extraCallback()V

    return-void
.end method
