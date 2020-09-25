.class public final Lo/getCodedOutput$asBinder$extraCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/getCodedOutput$onTransact;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getCodedOutput$asBinder;",
        "Lo/getCodedOutput$asBinder$extraCallback;",
        ">;",
        "Lo/getCodedOutput$onTransact;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3091
    invoke-static {}, Lo/getCodedOutput$asBinder;->access$6000()Lo/getCodedOutput$asBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCodedOutput$4;)V
    .locals 0

    .line 3084
    invoke-direct {p0}, Lo/getCodedOutput$asBinder$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearAppUpdateTime()Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3162
    invoke-virtual {p0}, Lo/getCodedOutput$asBinder$extraCallback;->copyOnWrite()V

    .line 3163
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-static {v0}, Lo/getCodedOutput$asBinder;->access$6400(Lo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final clearNamespace()Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3208
    invoke-virtual {p0}, Lo/getCodedOutput$asBinder$extraCallback;->copyOnWrite()V

    .line 3209
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-static {v0}, Lo/getCodedOutput$asBinder;->access$6600(Lo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final clearResourceId()Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3126
    invoke-virtual {p0}, Lo/getCodedOutput$asBinder$extraCallback;->copyOnWrite()V

    .line 3127
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-static {v0}, Lo/getCodedOutput$asBinder;->access$6200(Lo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final getAppUpdateTime()J
    .locals 2

    .line 3145
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getCodedOutput$asBinder;->getAppUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 3181
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getCodedOutput$asBinder;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 3190
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getCodedOutput$asBinder;->getNamespaceBytes()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getResourceId()I
    .locals 1

    .line 3109
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getCodedOutput$asBinder;->getResourceId()I

    move-result v0

    return v0
.end method

.method public final hasAppUpdateTime()Z
    .locals 1

    .line 3137
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getCodedOutput$asBinder;->hasAppUpdateTime()Z

    move-result v0

    return v0
.end method

.method public final hasNamespace()Z
    .locals 1

    .line 3173
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getCodedOutput$asBinder;->hasNamespace()Z

    move-result v0

    return v0
.end method

.method public final hasResourceId()Z
    .locals 1

    .line 3101
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getCodedOutput$asBinder;->hasResourceId()Z

    move-result v0

    return v0
.end method

.method public final setAppUpdateTime(J)Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3153
    invoke-virtual {p0}, Lo/getCodedOutput$asBinder$extraCallback;->copyOnWrite()V

    .line 3154
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$asBinder;->access$6300(Lo/getCodedOutput$asBinder;J)V

    return-object p0
.end method

.method public final setNamespace(Ljava/lang/String;)Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3199
    invoke-virtual {p0}, Lo/getCodedOutput$asBinder$extraCallback;->copyOnWrite()V

    .line 3200
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-static {v0, p1}, Lo/getCodedOutput$asBinder;->access$6500(Lo/getCodedOutput$asBinder;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNamespaceBytes(Lo/SessionProtobufHelper;)Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3219
    invoke-virtual {p0}, Lo/getCodedOutput$asBinder$extraCallback;->copyOnWrite()V

    .line 3220
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-static {v0, p1}, Lo/getCodedOutput$asBinder;->access$6700(Lo/getCodedOutput$asBinder;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final setResourceId(I)Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3117
    invoke-virtual {p0}, Lo/getCodedOutput$asBinder$extraCallback;->copyOnWrite()V

    .line 3118
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$asBinder;

    invoke-static {v0, p1}, Lo/getCodedOutput$asBinder;->access$6100(Lo/getCodedOutput$asBinder;I)V

    return-object p0
.end method
