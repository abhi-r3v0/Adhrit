.class final Lo/persistNonFatalEvent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onReportSendComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/persistNonFatalEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onReportSendComplete<",
        "Lo/parse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    check-cast p1, Lo/parse;

    invoke-virtual {p0, p1}, Lo/persistNonFatalEvent$4;->evaluate(Lo/parse;)Z

    move-result p1

    return p1
.end method

.method public final evaluate(Lo/parse;)Z
    .locals 0

    .line 61
    iget-boolean p1, p1, Lo/parse;->active:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
