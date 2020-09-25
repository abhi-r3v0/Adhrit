.class final Lo/onDataMessage$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->asBinder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onDataMessage;


# direct methods
.method constructor <init>(Lo/onDataMessage;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lo/onDataMessage$12;->ICustomTabsCallback:Lo/onDataMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 271
    iget-object v0, p0, Lo/onDataMessage$12;->ICustomTabsCallback:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0}, Lo/colorFlip;->asBinder()V

    return-void
.end method
