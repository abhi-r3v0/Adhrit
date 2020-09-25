.class public final Lo/ClsFileOutputStream$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ClsFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/ClsFileOutputStream;",
        "Lo/ClsFileOutputStream$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 377
    invoke-static {}, Lo/ClsFileOutputStream;->asBinder()Lo/ClsFileOutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 370
    invoke-direct {p0}, Lo/ClsFileOutputStream$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/ClsFileOutputStream$onMessageChannelReady;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lo/ClsFileOutputStream$onMessageChannelReady;->copyOnWrite()V

    .line 421
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/ClsFileOutputStream;

    invoke-static {v0, p1}, Lo/ClsFileOutputStream;->onNavigationEvent(Lo/ClsFileOutputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method public final extraCallback(Lo/writeSInt32;)Lo/ClsFileOutputStream$onMessageChannelReady;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lo/ClsFileOutputStream$onMessageChannelReady;->copyOnWrite()V

    .line 530
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/ClsFileOutputStream;

    invoke-static {v0, p1}, Lo/ClsFileOutputStream;->extraCallback(Lo/ClsFileOutputStream;Lo/writeSInt32;)V

    return-object p0
.end method
