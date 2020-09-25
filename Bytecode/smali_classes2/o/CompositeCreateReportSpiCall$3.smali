.class final Lo/CompositeCreateReportSpiCall$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CompositeCreateReportSpiCall;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic extraCallback:I

.field private synthetic onPostMessage:Lo/CompositeCreateReportSpiCall;


# direct methods
.method constructor <init>(Lo/CompositeCreateReportSpiCall;I)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/CompositeCreateReportSpiCall$3;->onPostMessage:Lo/CompositeCreateReportSpiCall;

    iput p2, p0, Lo/CompositeCreateReportSpiCall$3;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget-object p1, p0, Lo/CompositeCreateReportSpiCall$3;->onPostMessage:Lo/CompositeCreateReportSpiCall;

    .line 1047
    iget-object p1, p1, Lo/CompositeCreateReportSpiCall;->extraCallback:Lo/stringToByteString;

    .line 114
    iget p2, p0, Lo/CompositeCreateReportSpiCall$3;->extraCallback:I

    invoke-interface {p1, p2}, Lo/stringToByteString;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lo/CompositeCreateReportSpiCall$3;->ICustomTabsCallback:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1158
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall$3;->ICustomTabsCallback:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall$3;->ICustomTabsCallback:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 4123
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall$3;->ICustomTabsCallback:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 138
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall$3;->ICustomTabsCallback:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 3133
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall$3;->ICustomTabsCallback:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 143
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall$3;->ICustomTabsCallback:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 1

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 2153
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
