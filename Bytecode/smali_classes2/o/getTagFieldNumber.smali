.class final Lo/getTagFieldNumber;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ReportUploader$Worker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getTagFieldNumber$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/getWireType;


# instance fields
.field private final onPostMessage:Lo/getWireType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lo/getTagFieldNumber$2;

    invoke-direct {v0}, Lo/getTagFieldNumber$2;-><init>()V

    sput-object v0, Lo/getTagFieldNumber;->ICustomTabsCallback:Lo/getWireType;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1118
    new-instance v0, Lo/getTagFieldNumber$onNavigationEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/getWireType;

    .line 1119
    invoke-static {}, Lo/getEventAppSize;->extraCallback()Lo/getEventAppSize;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lo/getTagFieldNumber;->onNavigationEvent()Lo/getWireType;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/getTagFieldNumber$onNavigationEvent;-><init>([Lo/getWireType;)V

    .line 44
    invoke-direct {p0, v0}, Lo/getTagFieldNumber;-><init>(Lo/getWireType;)V

    return-void
.end method

.method private constructor <init>(Lo/getWireType;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 48
    invoke-static {p1, v0}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getWireType;

    iput-object p1, p0, Lo/getTagFieldNumber;->onPostMessage:Lo/getWireType;

    return-void
.end method

.method private static onNavigationEvent()Lo/getWireType;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 166
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 167
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getWireType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    sget-object v0, Lo/getTagFieldNumber;->ICustomTabsCallback:Lo/getWireType;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Class;)Lo/CreateReportRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/CreateReportRequest<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lo/NativeSessionReport;->onNavigationEvent(Ljava/lang/Class;)V

    .line 55
    iget-object v0, p0, Lo/getTagFieldNumber;->onPostMessage:Lo/getWireType;

    invoke-interface {v0, p1}, Lo/getWireType;->onNavigationEvent(Ljava/lang/Class;)Lo/WireFormat$FieldType$1;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Lo/WireFormat$FieldType$1;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-class v0, Lo/getEventAppExecutionSize;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lo/NativeSessionReport;->ICustomTabsCallback()Lo/SessionReport;

    move-result-object p1

    .line 62
    invoke-static {}, Lo/writeSessionEventLog;->onMessageChannelReady()Lo/getSessionAppSize;

    move-result-object v0

    .line 63
    invoke-interface {v1}, Lo/WireFormat$FieldType$1;->ICustomTabsCallback()Lo/WireFormat$FieldType$2;

    move-result-object v1

    .line 60
    invoke-static {p1, v0, v1}, Lo/WireFormat$FieldType$3;->extraCallback(Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$3;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-static {}, Lo/NativeSessionReport;->extraCallback()Lo/SessionReport;

    move-result-object p1

    .line 67
    invoke-static {}, Lo/writeSessionEventLog;->onPostMessage()Lo/getSessionAppSize;

    move-result-object v0

    .line 68
    invoke-interface {v1}, Lo/WireFormat$FieldType$1;->ICustomTabsCallback()Lo/WireFormat$FieldType$2;

    move-result-object v1

    .line 65
    invoke-static {p1, v0, v1}, Lo/WireFormat$FieldType$3;->extraCallback(Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$3;

    move-result-object p1

    return-object p1

    .line 2075
    :cond_1
    const-class v0, Lo/getEventAppExecutionSize;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 2114
    invoke-interface {v1}, Lo/WireFormat$FieldType$1;->onNavigationEvent()Lo/uploadReport;

    move-result-object p1

    sget-object v3, Lo/uploadReport;->onMessageChannelReady:Lo/uploadReport;

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2080
    invoke-static {}, Lo/ReportUploader;->onMessageChannelReady()Lo/getDefaultDefault;

    move-result-object v2

    .line 2081
    invoke-static {}, Lo/getThreadSize;->extraCallback()Lo/getThreadSize;

    move-result-object v3

    .line 2082
    invoke-static {}, Lo/NativeSessionReport;->ICustomTabsCallback()Lo/SessionReport;

    move-result-object v4

    .line 2083
    invoke-static {}, Lo/writeSessionEventLog;->onMessageChannelReady()Lo/getSessionAppSize;

    move-result-object v5

    .line 2084
    invoke-static {}, Lo/isPackable;->onNavigationEvent()Lo/WireFormat$FieldType;

    move-result-object v6

    .line 2077
    invoke-static/range {v1 .. v6}, Lo/ReportManager;->extraCallback(Lo/WireFormat$FieldType$1;Lo/getDefaultDefault;Lo/getThreadSize;Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType;)Lo/ReportManager;

    move-result-object p1

    return-object p1

    .line 2088
    :cond_3
    invoke-static {}, Lo/ReportUploader;->onMessageChannelReady()Lo/getDefaultDefault;

    move-result-object v2

    .line 2089
    invoke-static {}, Lo/getThreadSize;->extraCallback()Lo/getThreadSize;

    move-result-object v3

    .line 2090
    invoke-static {}, Lo/NativeSessionReport;->ICustomTabsCallback()Lo/SessionReport;

    move-result-object v4

    const/4 v5, 0x0

    .line 2092
    invoke-static {}, Lo/isPackable;->onNavigationEvent()Lo/WireFormat$FieldType;

    move-result-object v6

    .line 2085
    invoke-static/range {v1 .. v6}, Lo/ReportManager;->extraCallback(Lo/WireFormat$FieldType$1;Lo/getDefaultDefault;Lo/getThreadSize;Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType;)Lo/ReportManager;

    move-result-object p1

    return-object p1

    .line 3114
    :cond_4
    invoke-interface {v1}, Lo/WireFormat$FieldType$1;->onNavigationEvent()Lo/uploadReport;

    move-result-object p1

    sget-object v3, Lo/uploadReport;->onMessageChannelReady:Lo/uploadReport;

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 2098
    invoke-static {}, Lo/ReportUploader;->onNavigationEvent()Lo/getDefaultDefault;

    move-result-object v2

    .line 2099
    invoke-static {}, Lo/getThreadSize;->ICustomTabsCallback()Lo/getThreadSize;

    move-result-object v3

    .line 2100
    invoke-static {}, Lo/NativeSessionReport;->extraCallback()Lo/SessionReport;

    move-result-object v4

    .line 2101
    invoke-static {}, Lo/writeSessionEventLog;->onPostMessage()Lo/getSessionAppSize;

    move-result-object v5

    .line 2102
    invoke-static {}, Lo/isPackable;->extraCallback()Lo/WireFormat$FieldType;

    move-result-object v6

    .line 2095
    invoke-static/range {v1 .. v6}, Lo/ReportManager;->extraCallback(Lo/WireFormat$FieldType$1;Lo/getDefaultDefault;Lo/getThreadSize;Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType;)Lo/ReportManager;

    move-result-object p1

    return-object p1

    .line 2106
    :cond_6
    invoke-static {}, Lo/ReportUploader;->onNavigationEvent()Lo/getDefaultDefault;

    move-result-object v2

    .line 2107
    invoke-static {}, Lo/getThreadSize;->ICustomTabsCallback()Lo/getThreadSize;

    move-result-object v3

    .line 2108
    invoke-static {}, Lo/NativeSessionReport;->onPostMessage()Lo/SessionReport;

    move-result-object v4

    const/4 v5, 0x0

    .line 2110
    invoke-static {}, Lo/isPackable;->extraCallback()Lo/WireFormat$FieldType;

    move-result-object v6

    .line 2103
    invoke-static/range {v1 .. v6}, Lo/ReportManager;->extraCallback(Lo/WireFormat$FieldType$1;Lo/getDefaultDefault;Lo/getThreadSize;Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType;)Lo/ReportManager;

    move-result-object p1

    return-object p1
.end method
