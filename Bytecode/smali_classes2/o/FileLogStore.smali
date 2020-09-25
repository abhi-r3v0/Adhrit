.class public Lo/FileLogStore;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final component:Ljava/lang/String;

.field private final logger:Lo/deleteLogFile;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/deleteLogFile;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lo/FileLogStore;-><init>(Lo/deleteLogFile;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/deleteLogFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/FileLogStore;->logger:Lo/deleteLogFile;

    .line 39
    iput-object p2, p0, Lo/FileLogStore;->component:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lo/FileLogStore;->prefix:Ljava/lang/String;

    return-void
.end method

.method private static exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 24
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private now()J
    .locals 2

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private varargs toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 88
    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_0
    iget-object p2, p0, Lo/FileLogStore;->prefix:Ljava/lang/String;

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lo/FileLogStore;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 6

    .line 74
    invoke-virtual {p0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0, p1, p3}, Lo/FileLogStore;->toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lo/FileLogStore;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v3, p1

    .line 79
    iget-object v0, p0, Lo/FileLogStore;->logger:Lo/deleteLogFile;

    sget-object v1, Lo/deleteLogFile$extraCallback;->DEBUG:Lo/deleteLogFile$extraCallback;

    iget-object v2, p0, Lo/FileLogStore;->component:Ljava/lang/String;

    invoke-direct {p0}, Lo/FileLogStore;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lo/deleteLogFile;->onLogMessage(Lo/deleteLogFile$extraCallback;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lo/FileLogStore;->toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lo/FileLogStore;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    iget-object v1, p0, Lo/FileLogStore;->logger:Lo/deleteLogFile;

    sget-object v2, Lo/deleteLogFile$extraCallback;->ERROR:Lo/deleteLogFile$extraCallback;

    iget-object v3, p0, Lo/FileLogStore;->component:Ljava/lang/String;

    invoke-direct {p0}, Lo/FileLogStore;->now()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lo/deleteLogFile;->onLogMessage(Lo/deleteLogFile$extraCallback;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 6

    .line 61
    iget-object v0, p0, Lo/FileLogStore;->logger:Lo/deleteLogFile;

    sget-object v1, Lo/deleteLogFile$extraCallback;->INFO:Lo/deleteLogFile$extraCallback;

    iget-object v2, p0, Lo/FileLogStore;->component:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lo/FileLogStore;->toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lo/FileLogStore;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lo/deleteLogFile;->onLogMessage(Lo/deleteLogFile$extraCallback;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public logsDebug()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lo/FileLogStore;->logger:Lo/deleteLogFile;

    invoke-interface {v0}, Lo/deleteLogFile;->getLogLevel()Lo/deleteLogFile$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lo/deleteLogFile$extraCallback;->DEBUG:Lo/deleteLogFile$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lo/FileLogStore;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-direct {p0, p1, v0}, Lo/FileLogStore;->toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lo/FileLogStore;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v3, p1

    .line 57
    iget-object v0, p0, Lo/FileLogStore;->logger:Lo/deleteLogFile;

    sget-object v1, Lo/deleteLogFile$extraCallback;->WARN:Lo/deleteLogFile$extraCallback;

    iget-object v2, p0, Lo/FileLogStore;->component:Ljava/lang/String;

    invoke-direct {p0}, Lo/FileLogStore;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lo/deleteLogFile;->onLogMessage(Lo/deleteLogFile$extraCallback;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
