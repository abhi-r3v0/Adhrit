.class final Lo/onDataMessage$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->onPostMessage(Lo/loadNestedQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onDataMessage;

.field private synthetic onMessageChannelReady:Lo/loadNestedQuery;


# direct methods
.method constructor <init>(Lo/onDataMessage;Lo/loadNestedQuery;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lo/onDataMessage$4;->ICustomTabsCallback:Lo/onDataMessage;

    iput-object p2, p0, Lo/onDataMessage$4;->onMessageChannelReady:Lo/loadNestedQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 367
    iget-object v0, p0, Lo/onDataMessage$4;->ICustomTabsCallback:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    iget-object v1, p0, Lo/onDataMessage$4;->onMessageChannelReady:Lo/loadNestedQuery;

    invoke-interface {v0, v1}, Lo/colorFlip;->onPostMessage(Lo/loadNestedQuery;)V

    return-void
.end method
