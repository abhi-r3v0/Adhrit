.class public final Lo/getLogAsString;
.super Lo/closeLogFile;
.source ""


# direct methods
.method public constructor <init>(Lo/deleteLogFile$extraCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/deleteLogFile$extraCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lo/closeLogFile;-><init>(Lo/deleteLogFile$extraCallback;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final buildLogMessage(Lo/deleteLogFile$extraCallback;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    return-object p3
.end method

.method protected final debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
