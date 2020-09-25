.class final Lo/onDataMessage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->ICustomTabsCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:Lo/onDataMessage;


# direct methods
.method constructor <init>(Lo/onDataMessage;I)V
    .locals 0

    .line 330
    iput-object p1, p0, Lo/onDataMessage$1;->onMessageChannelReady:Lo/onDataMessage;

    iput p2, p0, Lo/onDataMessage$1;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 333
    iget-object v0, p0, Lo/onDataMessage$1;->onMessageChannelReady:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    iget v1, p0, Lo/onDataMessage$1;->extraCallback:I

    invoke-interface {v0, v1}, Lo/colorFlip;->ICustomTabsCallback(I)V

    return-void
.end method
