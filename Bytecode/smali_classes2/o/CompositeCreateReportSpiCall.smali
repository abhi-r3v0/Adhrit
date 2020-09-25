.class public final Lo/CompositeCreateReportSpiCall;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lo/stringToByteString;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lo/stringToByteString;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final extraCallback:Lo/stringToByteString;


# direct methods
.method public constructor <init>(Lo/stringToByteString;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 53
    iput-object p1, p0, Lo/CompositeCreateReportSpiCall;->extraCallback:Lo/stringToByteString;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/stringToByteString;
    .locals 0

    return-object p0
.end method

.method public final extraCallback(I)Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall;->extraCallback:Lo/stringToByteString;

    invoke-interface {v0, p1}, Lo/stringToByteString;->extraCallback(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1058
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall;->extraCallback:Lo/stringToByteString;

    invoke-interface {v0, p1}, Lo/stringToByteString;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Lo/CompositeCreateReportSpiCall$4;

    invoke-direct {v0, p0}, Lo/CompositeCreateReportSpiCall$4;-><init>(Lo/CompositeCreateReportSpiCall;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Lo/CompositeCreateReportSpiCall$3;

    invoke-direct {v0, p0, p1}, Lo/CompositeCreateReportSpiCall$3;-><init>(Lo/CompositeCreateReportSpiCall;I)V

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall;->extraCallback:Lo/stringToByteString;

    invoke-interface {v0}, Lo/stringToByteString;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 68
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall;->extraCallback:Lo/stringToByteString;

    invoke-interface {v0}, Lo/stringToByteString;->size()I

    move-result v0

    return v0
.end method
