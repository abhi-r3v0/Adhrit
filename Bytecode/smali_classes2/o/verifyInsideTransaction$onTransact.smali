.class final Lo/verifyInsideTransaction$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/verifyInsideTransaction$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifyInsideTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onTransact"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/verifyInsideTransaction;


# direct methods
.method private constructor <init>(Lo/verifyInsideTransaction;)V
    .locals 0

    .line 1036
    iput-object p1, p0, Lo/verifyInsideTransaction$onTransact;->ICustomTabsCallback:Lo/verifyInsideTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/verifyInsideTransaction;B)V
    .locals 0

    .line 1036
    invoke-direct {p0, p1}, Lo/verifyInsideTransaction$onTransact;-><init>(Lo/verifyInsideTransaction;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/verifyInsideTransaction;)V
    .locals 2

    .line 1039
    iget-object v0, p0, Lo/verifyInsideTransaction$onTransact;->ICustomTabsCallback:Lo/verifyInsideTransaction;

    instance-of v1, v0, Lo/verifyInsideTransaction$onMessageChannelReady;

    if-eqz v1, :cond_0

    .line 1041
    check-cast v0, Lo/verifyInsideTransaction$onMessageChannelReady;

    invoke-virtual {p1}, Lo/verifyInsideTransaction;->ICustomTabsCallback()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/verifyInsideTransaction$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Throwable;)Z

    return-void

    .line 1043
    :cond_0
    invoke-virtual {v0}, Lo/verifyInsideTransaction;->asBinder()V

    return-void
.end method
