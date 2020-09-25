.class final Lo/persistNonFatalEvent$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/persistNonFatalEvent;->verifyCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/parse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/persistNonFatalEvent;


# direct methods
.method constructor <init>(Lo/persistNonFatalEvent;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lo/persistNonFatalEvent$6;->this$0:Lo/persistNonFatalEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 353
    check-cast p1, Lo/parse;

    check-cast p2, Lo/parse;

    invoke-virtual {p0, p1, p2}, Lo/persistNonFatalEvent$6;->compare(Lo/parse;Lo/parse;)I

    move-result p1

    return p1
.end method

.method public final compare(Lo/parse;Lo/parse;)I
    .locals 2

    .line 356
    iget-wide v0, p1, Lo/parse;->id:J

    iget-wide p1, p2, Lo/parse;->id:J

    invoke-static {v0, v1, p1, p2}, Lo/SessionReportingCoordinator$$Lambda$2;->compareLongs(JJ)I

    move-result p1

    return p1
.end method
