.class final Lo/logsDebug$3;
.super Lo/logsDebug;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/logsDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/logsDebug;-><init>()V

    return-void
.end method


# virtual methods
.method public final asInterface()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;
    .locals 0

    return-object p0
.end method

.method public final onPostMessage(J)Lo/logsDebug;
    .locals 0

    return-object p0
.end method
