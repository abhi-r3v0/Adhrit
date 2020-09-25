.class public final Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/CrashlyticsReport$Session$Device;",
        "Lo/CrashlyticsReport$Session$Device$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 256
    invoke-static {}, Lo/CrashlyticsReport$Session$Device;->access$000()Lo/CrashlyticsReport$Session$Device;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReport$Session$Device$5;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearName()Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->copyOnWrite()V

    .line 314
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Device;->access$200(Lo/CrashlyticsReport$Session$Device;)V

    return-object p0
.end method

.method public final clearVersion()Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Device;->access$600(Lo/CrashlyticsReport$Session$Device;)V

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNameBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device;->getNameBytes()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Lo/getCustomHeaders;
    .locals 1

    .line 354
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device;->getVersion()Lo/getCustomHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final hasVersion()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public final mergeVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 389
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->copyOnWrite()V

    .line 390
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device;->access$500(Lo/CrashlyticsReport$Session$Device;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->copyOnWrite()V

    .line 300
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device;->access$100(Lo/CrashlyticsReport$Session$Device;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNameBytes(Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device;->access$300(Lo/CrashlyticsReport$Session$Device;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final setVersion(Lo/getCustomHeaders$onMessageChannelReady;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device;->access$400(Lo/CrashlyticsReport$Session$Device;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Device$onNavigationEvent;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$onNavigationEvent;->copyOnWrite()V

    .line 365
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device;->access$400(Lo/CrashlyticsReport$Session$Device;Lo/getCustomHeaders;)V

    return-object p0
.end method
