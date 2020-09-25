.class final Lo/ReportUploader$HandlingExceptionCheck;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/ReportUploader$HandlingExceptionCheck;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/CreateReportRequest<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/ReportUploader$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lo/ReportUploader$HandlingExceptionCheck;

    invoke-direct {v0}, Lo/ReportUploader$HandlingExceptionCheck;-><init>()V

    sput-object v0, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady:Lo/ReportUploader$HandlingExceptionCheck;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    .line 140
    new-instance v0, Lo/getTagFieldNumber;

    invoke-direct {v0}, Lo/getTagFieldNumber;-><init>()V

    iput-object v0, p0, Lo/ReportUploader$HandlingExceptionCheck;->extraCallback:Lo/ReportUploader$Worker;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;
    .locals 1

    .line 55
    sget-object v0, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady:Lo/ReportUploader$HandlingExceptionCheck;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;
    .locals 2
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

    const-string v0, "messageType"

    .line 89
    invoke-static {p1, v0}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CreateReportRequest;

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lo/ReportUploader$HandlingExceptionCheck;->extraCallback:Lo/ReportUploader$Worker;

    invoke-interface {v1, p1}, Lo/ReportUploader$Worker;->ICustomTabsCallback(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v1

    .line 1119
    invoke-static {p1, v0}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 1120
    invoke-static {v1, v0}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1121
    iget-object v0, p0, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CreateReportRequest;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method
