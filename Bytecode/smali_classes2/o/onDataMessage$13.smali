.class final Lo/onDataMessage$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onDataMessage;


# direct methods
.method constructor <init>(Lo/onDataMessage;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lo/onDataMessage$13;->onPostMessage:Lo/onDataMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 320
    iget-object v0, p0, Lo/onDataMessage$13;->onPostMessage:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0}, Lo/colorFlip;->onPostMessage()V

    return-void
.end method
