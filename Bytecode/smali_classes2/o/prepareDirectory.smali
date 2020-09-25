.class public final Lo/prepareDirectory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/convertDouble;


# instance fields
.field private final zzgo:Lo/aY;

.field private final zzgv:Lo/aN;

.field private final zzhf:Lo/convertDouble;

.field private final zzhg:J


# direct methods
.method public constructor <init>(Lo/convertDouble;Lo/deleteAllReports;Lo/aY;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/prepareDirectory;->zzhf:Lo/convertDouble;

    .line 3
    invoke-static {p2}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p1

    iput-object p1, p0, Lo/prepareDirectory;->zzgv:Lo/aN;

    .line 4
    iput-wide p4, p0, Lo/prepareDirectory;->zzhg:J

    .line 5
    iput-object p3, p0, Lo/prepareDirectory;->zzgo:Lo/aY;

    return-void
.end method


# virtual methods
.method public final onFailure(Lo/convertInteger;Ljava/io/IOException;)V
    .locals 3

    .line 7
    invoke-interface {p1}, Lo/convertInteger;->ICustomTabsCallback()Lo/isCompleteForChild;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1049
    iget-object v1, v0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    if-eqz v1, :cond_0

    .line 11
    iget-object v2, p0, Lo/prepareDirectory;->zzgv:Lo/aN;

    invoke-virtual {v1}, Lo/isFullyInitialized;->onMessageChannelReady()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    .line 1053
    :cond_0
    iget-object v1, v0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lo/prepareDirectory;->zzgv:Lo/aN;

    .line 2053
    iget-object v0, v0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v0}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 15
    :cond_1
    iget-object v0, p0, Lo/prepareDirectory;->zzgv:Lo/aN;

    iget-wide v1, p0, Lo/prepareDirectory;->zzhg:J

    invoke-virtual {v0, v1, v2}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 16
    iget-object v0, p0, Lo/prepareDirectory;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/prepareDirectory;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 17
    iget-object v0, p0, Lo/prepareDirectory;->zzgv:Lo/aN;

    invoke-static {v0}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 18
    iget-object v0, p0, Lo/prepareDirectory;->zzhf:Lo/convertDouble;

    invoke-interface {v0, p1, p2}, Lo/convertDouble;->onFailure(Lo/convertInteger;Ljava/io/IOException;)V

    return-void
.end method

.method public final onResponse(Lo/convertInteger;Lo/childAddedChange;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lo/prepareDirectory;->zzgo:Lo/aY;

    invoke-virtual {v0}, Lo/aY;->onNavigationEvent()J

    move-result-wide v5

    .line 21
    iget-object v2, p0, Lo/prepareDirectory;->zzgv:Lo/aN;

    iget-wide v3, p0, Lo/prepareDirectory;->zzhg:J

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->zza(Lo/childAddedChange;Lo/aN;JJ)V

    .line 22
    iget-object v0, p0, Lo/prepareDirectory;->zzhf:Lo/convertDouble;

    invoke-interface {v0, p1, p2}, Lo/convertDouble;->onResponse(Lo/convertInteger;Lo/childAddedChange;)V

    return-void
.end method
