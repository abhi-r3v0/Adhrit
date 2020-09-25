.class final Lo/onDataMessage$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->onPostMessage(Lo/saveNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onDataMessage;

.field private synthetic onPostMessage:Lo/saveNode;


# direct methods
.method constructor <init>(Lo/onDataMessage;Lo/saveNode;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/onDataMessage$7;->ICustomTabsCallback:Lo/onDataMessage;

    iput-object p2, p0, Lo/onDataMessage$7;->onPostMessage:Lo/saveNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lo/onDataMessage$7;->ICustomTabsCallback:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    iget-object v1, p0, Lo/onDataMessage$7;->onPostMessage:Lo/saveNode;

    invoke-interface {v0, v1}, Lo/colorFlip;->onPostMessage(Lo/saveNode;)V

    return-void
.end method
