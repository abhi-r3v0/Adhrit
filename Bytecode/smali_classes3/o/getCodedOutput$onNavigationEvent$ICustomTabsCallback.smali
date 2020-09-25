.class public final Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/getCodedOutput$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getCodedOutput$onNavigationEvent;",
        "Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;",
        ">;",
        "Lo/getCodedOutput$extraCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1053
    invoke-static {}, Lo/getCodedOutput$onNavigationEvent;->access$2000()Lo/getCodedOutput$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCodedOutput$4;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearKey()Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0}, Lo/getCodedOutput$onNavigationEvent;->access$2200(Lo/getCodedOutput$onNavigationEvent;)V

    return-object p0
.end method

.method public final clearValue()Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 1145
    invoke-virtual {p0}, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;->copyOnWrite()V

    .line 1146
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0}, Lo/getCodedOutput$onNavigationEvent;->access$2500(Lo/getCodedOutput$onNavigationEvent;)V

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 1071
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-virtual {v0}, Lo/getCodedOutput$onNavigationEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 1080
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-virtual {v0}, Lo/getCodedOutput$onNavigationEvent;->getKeyBytes()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Lo/SessionProtobufHelper;
    .locals 1

    .line 1128
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-virtual {v0}, Lo/getCodedOutput$onNavigationEvent;->getValue()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final hasKey()Z
    .locals 1

    .line 1063
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-virtual {v0}, Lo/getCodedOutput$onNavigationEvent;->hasKey()Z

    move-result v0

    return v0
.end method

.method public final hasValue()Z
    .locals 1

    .line 1120
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-virtual {v0}, Lo/getCodedOutput$onNavigationEvent;->hasValue()Z

    move-result v0

    return v0
.end method

.method public final setKey(Ljava/lang/String;)Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;->copyOnWrite()V

    .line 1090
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p1}, Lo/getCodedOutput$onNavigationEvent;->access$2100(Lo/getCodedOutput$onNavigationEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setKeyBytes(Lo/SessionProtobufHelper;)Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 1109
    invoke-virtual {p0}, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;->copyOnWrite()V

    .line 1110
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p1}, Lo/getCodedOutput$onNavigationEvent;->access$2300(Lo/getCodedOutput$onNavigationEvent;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final setValue(Lo/SessionProtobufHelper;)Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;->copyOnWrite()V

    .line 1137
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p1}, Lo/getCodedOutput$onNavigationEvent;->access$2400(Lo/getCodedOutput$onNavigationEvent;Lo/SessionProtobufHelper;)V

    return-object p0
.end method
