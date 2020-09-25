.class final Lo/onDataMessage$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->extraCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onDataMessage;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/onDataMessage;I)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/onDataMessage$8;->ICustomTabsCallback:Lo/onDataMessage;

    iput p2, p0, Lo/onDataMessage$8;->onPostMessage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lo/onDataMessage$8;->ICustomTabsCallback:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    iget v1, p0, Lo/onDataMessage$8;->onPostMessage:I

    invoke-interface {v0, v1}, Lo/colorFlip;->extraCallback(I)V

    return-void
.end method
