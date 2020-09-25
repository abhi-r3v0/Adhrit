.class public Lo/closeLogFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/deleteLogFile;


# instance fields
.field private final enabledComponents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final minLevel:Lo/deleteLogFile$extraCallback;


# direct methods
.method public constructor <init>(Lo/deleteLogFile$extraCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/deleteLogFile$extraCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lo/closeLogFile;->enabledComponents:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lo/closeLogFile;->enabledComponents:Ljava/util/Set;

    .line 33
    :goto_0
    iput-object p1, p0, Lo/closeLogFile;->minLevel:Lo/deleteLogFile$extraCallback;

    return-void
.end method


# virtual methods
.method protected buildLogMessage(Lo/deleteLogFile$extraCallback;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    .line 66
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getLogLevel()Lo/deleteLogFile$extraCallback;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/closeLogFile;->minLevel:Lo/deleteLogFile$extraCallback;

    return-object v0
.end method

.method protected info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onLogMessage(Lo/deleteLogFile$extraCallback;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 43
    invoke-virtual {p0, p1, p2}, Lo/closeLogFile;->shouldLog(Lo/deleteLogFile$extraCallback;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    invoke-virtual/range {p0 .. p5}, Lo/closeLogFile;->buildLogMessage(Lo/deleteLogFile$extraCallback;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    .line 45
    sget-object p4, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->$SwitchMap$com$google$firebase$database$logging$Logger$Level:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p4, p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    const/4 p4, 0x4

    if-ne p1, p4, :cond_0

    .line 56
    invoke-virtual {p0, p2, p3}, Lo/closeLogFile;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Should not reach here!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    invoke-virtual {p0, p2, p3}, Lo/closeLogFile;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_2
    invoke-virtual {p0, p2, p3}, Lo/closeLogFile;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_3
    invoke-virtual {p0, p2, p3}, Lo/closeLogFile;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected shouldLog(Lo/deleteLogFile$extraCallback;Ljava/lang/String;)Z
    .locals 2

    .line 86
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lo/closeLogFile;->minLevel:Lo/deleteLogFile$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lo/closeLogFile;->enabledComponents:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lo/deleteLogFile$extraCallback;->DEBUG:Lo/deleteLogFile$extraCallback;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lo/closeLogFile;->enabledComponents:Ljava/util/Set;

    .line 89
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
